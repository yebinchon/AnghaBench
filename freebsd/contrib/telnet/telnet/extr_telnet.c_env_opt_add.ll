; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_env_opt_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_env_opt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_reply = common dso_local global i8* null, align 8
@opt_replyp = common dso_local global i8* null, align 8
@opt_replyend = common dso_local global i8* null, align 8
@OPT_REPLY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"env_opt_add: realloc() failed!!!\0A\00", align 1
@TELOPT_OLD_ENVIRON = common dso_local global i64 0, align 8
@old_env_value = common dso_local global i32 0, align 4
@old_env_var = common dso_local global i32 0, align 4
@telopt_environ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_opt_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** @opt_reply, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %141

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12, %9
  %18 = call i8* @env_default(i32 1, i32 0)
  br label %19

19:                                               ; preds = %22, %17
  %20 = call i8* @env_default(i32 0, i32 0)
  store i8* %20, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %2, align 8
  call void @env_opt_add(i8* %23)
  br label %19

24:                                               ; preds = %19
  %25 = call i8* @env_default(i32 1, i32 1)
  br label %26

26:                                               ; preds = %29, %24
  %27 = call i8* @env_default(i32 0, i32 1)
  store i8* %27, i8** %2, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i8*, i8** %2, align 8
  call void @env_opt_add(i8* %30)
  br label %26

31:                                               ; preds = %26
  br label %141

32:                                               ; preds = %12
  %33 = load i8*, i8** %2, align 8
  %34 = call i8* @env_getvalue(i8* %33)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** @opt_replyp, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = mul nsw i32 2, %40
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %35, i64 %45
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  %53 = load i8*, i8** @opt_replyend, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %43
  %56 = load i32, i32* @OPT_REPLY_SIZE, align 4
  %57 = load i8*, i8** @opt_replyend, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** @opt_replyend, align 8
  %60 = load i8*, i8** @opt_replyend, align 8
  %61 = load i8*, i8** @opt_reply, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load i8*, i8** @opt_reply, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @realloc(i8* %66, i32 %67)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** @opt_reply, align 8
  %70 = load i8*, i8** @opt_reply, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** @opt_replyend, align 8
  store i8* null, i8** @opt_replyp, align 8
  store i8* null, i8** @opt_reply, align 8
  br label %141

74:                                               ; preds = %55
  %75 = load i8*, i8** @opt_reply, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8*, i8** @opt_replyend, align 8
  %80 = load i8*, i8** @opt_replyp, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %78, i64 %84
  store i8* %85, i8** @opt_replyp, align 8
  %86 = load i8*, i8** @opt_reply, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8* %89, i8** @opt_replyend, align 8
  br label %90

90:                                               ; preds = %74, %43
  %91 = load i8*, i8** %2, align 8
  %92 = call i64 @opt_welldefined(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i8*, i8** @opt_replyp, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** @opt_replyp, align 8
  store i8 -128, i8* %95, align 1
  br label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** @opt_replyp, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** @opt_replyp, align 8
  store i8 -125, i8* %98, align 1
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %140, %100
  br label %102

102:                                              ; preds = %123, %101
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %2, align 8
  %105 = load i8, i8* %103, align 1
  store i8 %105, i8* %4, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load i8*, i8** @opt_replyp, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  %110 = load i8*, i8** @opt_replyend, align 8
  %111 = icmp ugt i8* %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %141

113:                                              ; preds = %107
  %114 = load i8, i8* %4, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 255
  switch i32 %116, label %123 [
    i32 130, label %117
    i32 128, label %120
    i32 129, label %120
    i32 132, label %120
    i32 131, label %120
  ]

117:                                              ; preds = %113
  %118 = load i8*, i8** @opt_replyp, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** @opt_replyp, align 8
  store i8 -126, i8* %118, align 1
  br label %123

120:                                              ; preds = %113, %113, %113, %113
  %121 = load i8*, i8** @opt_replyp, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** @opt_replyp, align 8
  store i8 -124, i8* %121, align 1
  br label %123

123:                                              ; preds = %113, %120, %117
  %124 = load i8, i8* %4, align 1
  %125 = load i8*, i8** @opt_replyp, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** @opt_replyp, align 8
  store i8 %124, i8* %125, align 1
  br label %102

127:                                              ; preds = %102
  %128 = load i8*, i8** %3, align 8
  store i8* %128, i8** %2, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i8*, i8** @opt_replyp, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 5
  %133 = load i8*, i8** @opt_replyend, align 8
  %134 = icmp ugt i8* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %141

136:                                              ; preds = %130
  %137 = load i8*, i8** @opt_replyp, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** @opt_replyp, align 8
  store i8 -127, i8* %137, align 1
  store i8* null, i8** %3, align 8
  br label %140

139:                                              ; preds = %127
  br label %141

140:                                              ; preds = %136
  br label %101

141:                                              ; preds = %8, %31, %72, %112, %135, %139
  ret void
}

declare dso_local i8* @env_default(i32, i32) #1

declare dso_local i8* @env_getvalue(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @opt_welldefined(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

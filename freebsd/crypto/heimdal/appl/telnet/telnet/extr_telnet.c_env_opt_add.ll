; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_env_opt_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_env_opt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_reply = common dso_local global i32* null, align 8
@opt_replyp = common dso_local global i32* null, align 8
@opt_replyend = common dso_local global i32* null, align 8
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
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32*, i32** @opt_reply, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %146

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13, %10
  %19 = call i8* @env_default(i32 1, i32 0)
  br label %20

20:                                               ; preds = %23, %18
  %21 = call i8* @env_default(i32 0, i32 0)
  store i8* %21, i8** %2, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i8*, i8** %2, align 8
  call void @env_opt_add(i8* %24)
  br label %20

25:                                               ; preds = %20
  %26 = call i8* @env_default(i32 1, i32 1)
  br label %27

27:                                               ; preds = %30, %25
  %28 = call i8* @env_default(i32 0, i32 1)
  store i8* %28, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** %2, align 8
  call void @env_opt_add(i8* %31)
  br label %27

32:                                               ; preds = %27
  br label %146

33:                                               ; preds = %13
  %34 = load i8*, i8** %2, align 8
  %35 = call i8* @env_getvalue(i8* %34)
  store i8* %35, i8** %3, align 8
  %36 = load i32*, i32** @opt_replyp, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = mul nsw i32 2, %41
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 0, %43 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %36, i64 %46
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32*, i32** @opt_replyend, align 8
  %55 = icmp ugt i32* %53, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %44
  %57 = load i32, i32* @OPT_REPLY_SIZE, align 4
  %58 = load i32*, i32** @opt_replyend, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** @opt_replyend, align 8
  %61 = load i32*, i32** @opt_replyend, align 8
  %62 = load i32*, i32** @opt_reply, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** @opt_reply, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i8* @realloc(i32* %68, i32 %69)
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** @opt_replyend, align 8
  store i32* null, i32** @opt_replyp, align 8
  store i32* null, i32** @opt_reply, align 8
  br label %146

75:                                               ; preds = %56
  %76 = load i8*, i8** %6, align 8
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** @opt_reply, align 8
  %78 = load i32*, i32** @opt_reply, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32*, i32** @opt_replyend, align 8
  %83 = load i32*, i32** @opt_replyp, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  store i32* %89, i32** @opt_replyp, align 8
  %90 = load i32*, i32** @opt_reply, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** @opt_replyend, align 8
  br label %94

94:                                               ; preds = %75, %44
  %95 = load i8*, i8** %2, align 8
  %96 = call i64 @opt_welldefined(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32*, i32** @opt_replyp, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** @opt_replyp, align 8
  store i32 128, i32* %99, align 4
  br label %104

101:                                              ; preds = %94
  %102 = load i32*, i32** @opt_replyp, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** @opt_replyp, align 8
  store i32 131, i32* %102, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %145, %104
  br label %106

106:                                              ; preds = %127, %105
  %107 = load i8*, i8** %2, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %2, align 8
  %109 = load i8, i8* %107, align 1
  store i8 %109, i8* %4, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %106
  %112 = load i32*, i32** @opt_replyp, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load i32*, i32** @opt_replyend, align 8
  %115 = icmp ugt i32* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %146

117:                                              ; preds = %111
  %118 = load i8, i8* %4, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 255
  switch i32 %120, label %127 [
    i32 130, label %121
    i32 128, label %124
    i32 129, label %124
    i32 132, label %124
    i32 131, label %124
  ]

121:                                              ; preds = %117
  %122 = load i32*, i32** @opt_replyp, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** @opt_replyp, align 8
  store i32 130, i32* %122, align 4
  br label %127

124:                                              ; preds = %117, %117, %117, %117
  %125 = load i32*, i32** @opt_replyp, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** @opt_replyp, align 8
  store i32 132, i32* %125, align 4
  br label %127

127:                                              ; preds = %117, %124, %121
  %128 = load i8, i8* %4, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32*, i32** @opt_replyp, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** @opt_replyp, align 8
  store i32 %129, i32* %130, align 4
  br label %106

132:                                              ; preds = %106
  %133 = load i8*, i8** %3, align 8
  store i8* %133, i8** %2, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32*, i32** @opt_replyp, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  %138 = load i32*, i32** @opt_replyend, align 8
  %139 = icmp ugt i32* %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %146

141:                                              ; preds = %135
  %142 = load i32*, i32** @opt_replyp, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** @opt_replyp, align 8
  store i32 129, i32* %142, align 4
  store i8* null, i8** %3, align 8
  br label %145

144:                                              ; preds = %132
  br label %146

145:                                              ; preds = %141
  br label %105

146:                                              ; preds = %9, %32, %73, %116, %140, %144
  ret void
}

declare dso_local i8* @env_default(i32, i32) #1

declare dso_local i8* @env_getvalue(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @opt_welldefined(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_canon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_canon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"canonname: not enough buffer space\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @canon(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %32

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %31

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcpy(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add i64 %34, %36
  %38 = load i64, i64* %6, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @done(i32 1)
  br label %44

44:                                               ; preds = %40, %32
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @strcat(i8* %45, i8* %46)
  %48 = load i8*, i8** %5, align 8
  store i8* %48, i8** %8, align 8
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %75, %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  %57 = load i8, i8* %55, align 1
  %58 = load i8*, i8** %7, align 8
  store i8 %57, i8* %58, align 1
  br label %59

59:                                               ; preds = %71, %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ false, %59 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %59

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  br label %49

78:                                               ; preds = %49
  %79 = load i8*, i8** %7, align 8
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 -1
  store i8* %81, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i8*, i8** %7, align 8
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %165, %87
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %166

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %110, %94
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 47
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %103, %98
  %109 = phi i1 [ false, %98 ], [ %107, %103 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  br label %98

113:                                              ; preds = %108
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = icmp eq i64 %118, 1
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 46
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 -1
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @strcpy(i8* %128, i8* %129)
  %131 = load i8*, i8** %7, align 8
  store i8* %131, i8** %8, align 8
  br label %132

132:                                              ; preds = %125, %120, %113
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = icmp eq i64 %137, 2
  br i1 %138, label %139, label %165

139:                                              ; preds = %132
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @strncmp(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %145, i8** %7, align 8
  br label %146

146:                                              ; preds = %159, %143
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = icmp ugt i8* %147, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 -1
  store i8* %153, i8** %7, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 47
  br label %157

157:                                              ; preds = %151, %146
  %158 = phi i1 [ false, %146 ], [ %156, %151 ]
  br i1 %158, label %159, label %160

159:                                              ; preds = %157
  br label %146

160:                                              ; preds = %157
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @strcpy(i8* %161, i8* %162)
  %164 = load i8*, i8** %7, align 8
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %160, %139, %132
  br label %89

166:                                              ; preds = %89
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @done(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

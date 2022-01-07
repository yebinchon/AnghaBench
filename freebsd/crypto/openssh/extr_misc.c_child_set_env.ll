; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_child_set_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_child_set_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Invalid environment variable \22%.100s\22\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"child_set_env: too many env vars\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_set_env(i8*** %0, i64* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8***, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8*** %0, i8**** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32* @strchr(i8* %13, i8 signext 61)
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %135

19:                                               ; preds = %4
  %20 = load i8***, i8**** %5, align 8
  %21 = load i8**, i8*** %20, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = call i8* @xmalloc(i32 8)
  %29 = bitcast i8* %28 to i8**
  %30 = load i8***, i8**** %5, align 8
  store i8** %29, i8*** %30, align 8
  %31 = load i8***, i8**** %5, align 8
  %32 = getelementptr inbounds i8**, i8*** %31, i64 0
  %33 = load i8**, i8*** %32, align 8
  store i8* null, i8** %33, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 1, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %23, %19
  %36 = load i8***, i8**** %5, align 8
  %37 = load i8**, i8*** %36, align 8
  store i8** %37, i8*** %9, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %68, %35
  %42 = load i8**, i8*** %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load i8**, i8*** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @strncmp(i8* %51, i8* %52, i64 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47
  %57 = load i8**, i8*** %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 61
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %71

67:                                               ; preds = %56, %47
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %41

71:                                               ; preds = %66, %41
  %72 = load i8**, i8*** %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i8**, i8*** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @free(i8* %81)
  br label %109

83:                                               ; preds = %71
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, 1
  %89 = icmp uge i64 %86, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %83
  %91 = load i64, i64* %10, align 8
  %92 = icmp uge i64 %91, 1000
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 50
  store i64 %97, i64* %10, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i8** @xreallocarray(i8** %98, i64 %99, i32 8)
  %101 = load i8***, i8**** %5, align 8
  store i8** %100, i8*** %101, align 8
  store i8** %100, i8*** %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64*, i64** %6, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %95, %83
  %105 = load i8**, i8*** %9, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* null, i8** %108, align 8
  br label %109

109:                                              ; preds = %104, %77
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = add nsw i32 %111, 1
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = add nsw i32 %112, %114
  %116 = add nsw i32 %115, 1
  %117 = call i8* @xmalloc(i32 %116)
  %118 = load i8**, i8*** %9, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i8*, i8** %118, i64 %119
  store i8* %117, i8** %120, align 8
  %121 = load i8**, i8*** %9, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = add nsw i32 %126, 1
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = add nsw i32 %127, %129
  %131 = add nsw i32 %130, 1
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @snprintf(i8* %124, i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %109, %16
  ret void
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8** @xreallocarray(i8**, i64, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

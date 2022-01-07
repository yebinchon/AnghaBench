; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_next_component_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_next_component_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8**)* @next_component_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @next_component_string(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %114

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %44, %22
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i8* @strchr(i8* %31, i8 signext 34)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %9, align 8
  store i8* %37, i8** %8, align 8
  br label %44

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %38, %35
  br label %24

45:                                               ; preds = %24
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @strcspn(i8* %51, i8* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i8*, i8** %8, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %71, label %87

71:                                               ; preds = %62
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ult i8* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %82, %77, %71, %62
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %4, align 8
  br label %114

89:                                               ; preds = %57
  %90 = load i8*, i8** %8, align 8
  %91 = load i8**, i8*** %7, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 34
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 34
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ult i8* %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %5, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 -1
  store i8 0, i8* %111, align 1
  br label %112

112:                                              ; preds = %107, %102, %96, %89
  %113 = load i8*, i8** %5, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %112, %87, %21
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_if_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_if_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @if_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @MAX_LINE_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MAX_LINE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 95)
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %37

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %11, align 4
  store i8* null, i8** %6, align 8
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 95)
  store i8* %39, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %53

50:                                               ; preds = %37
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %12, align 4
  store i8* null, i8** %7, align 8
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %56, %16
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i64 [ %60, %58 ], [ %16, %61 ]
  %64 = trunc i64 %63 to i32
  %65 = call i32 @strncpy(i8* %18, i8* %54, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %18, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 %71, %20
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  br label %77

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i64 [ %75, %73 ], [ %20, %76 ]
  %79 = trunc i64 %78 to i32
  %80 = call i32 @strncpy(i8* %21, i8* %69, i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %21, i64 %82
  store i8 0, i8* %83, align 1
  %84 = call i32 @strcmp(i8* %18, i8* %21)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %93

89:                                               ; preds = %77
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strcmp(i8* %90, i8* %91)
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %87
  %94 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

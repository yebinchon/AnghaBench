; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_build_pax_attribute_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_build_pax_attribute_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"PaxHeader/blank\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"/PaxHeader/rootdir\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PaxHeader/currentdir\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PaxHeader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @build_pax_attribute_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_pax_attribute_name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %3, align 8
  br label %95

19:                                               ; preds = %10
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %55, %35, %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %7, align 8
  br label %25

38:                                               ; preds = %29, %25
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = icmp ugt i8* %39, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -2
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %7, align 8
  br label %25

58:                                               ; preds = %49, %43, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %3, align 8
  br label %95

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = icmp eq i8* %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strcpy(i8* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** %4, align 8
  store i8* %80, i8** %3, align 8
  br label %95

81:                                               ; preds = %72, %67
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %83 = call i32 @strcpy(i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %93 = call i32 @build_ustar_entry_name(i8* %84, i8* %85, i32 %91, i8* %92)
  %94 = load i8*, i8** %4, align 8
  store i8* %94, i8** %3, align 8
  br label %95

95:                                               ; preds = %81, %77, %63, %15
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @build_ustar_entry_name(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_MAX_LABELLEN = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dname_str(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64*, i64** %3, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  store i8 46, i8* %16, align 1
  %18 = load i8*, i8** %7, align 8
  store i8 0, i8* %18, align 1
  br label %92

19:                                               ; preds = %11
  %20 = load i64*, i64** %3, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %3, align 8
  %22 = load i64, i64* %20, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %84, %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %90

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @LDNS_MAX_LABELLEN, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  store i8 35, i8* %31, align 1
  %33 = load i8*, i8** %7, align 8
  store i8 0, i8* %33, align 1
  br label %92

34:                                               ; preds = %26
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  store i8 38, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  store i8 0, i8* %47, align 1
  br label %92

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %6, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load i64*, i64** %3, align 8
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i8
  %57 = call i64 @isalnum(i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load i64*, i64** %3, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 45
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i64*, i64** %3, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 95
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64*, i64** %3, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 42
  br i1 %70, label %71, label %78

71:                                               ; preds = %67, %63, %59, %53
  %72 = load i64*, i64** %3, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %3, align 8
  %74 = bitcast i64* %72 to i8*
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  store i8 %75, i8* %76, align 1
  br label %83

78:                                               ; preds = %67
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 63, i8* %79, align 1
  %81 = load i64*, i64** %3, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %3, align 8
  br label %83

83:                                               ; preds = %78, %71
  br label %49

84:                                               ; preds = %49
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %7, align 8
  store i8 46, i8* %85, align 1
  %87 = load i64*, i64** %3, align 8
  %88 = getelementptr inbounds i64, i64* %87, i32 1
  store i64* %88, i64** %3, align 8
  %89 = load i64, i64* %87, align 8
  store i64 %89, i64* %6, align 8
  br label %23

90:                                               ; preds = %23
  %91 = load i8*, i8** %7, align 8
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %90, %44, %30, %15
  ret void
}

declare dso_local i64 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_setstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_setstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TYPES = common dso_local global i64 0, align 8
@state = common dso_local global i64* null, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@degrees = common dso_local global i64* null, align 8
@rand_type = common dso_local global i64 0, align 8
@rptr = common dso_local global i64* null, align 8
@rand_deg = common dso_local global i64 0, align 8
@seps = common dso_local global i64* null, align 8
@rand_sep = common dso_local global i64 0, align 8
@fptr = common dso_local global i64* null, align 8
@end_ptr = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @setstate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_TYPES, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX_TYPES, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64*, i64** @state, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 -1
  %22 = bitcast i64* %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @TYPE_0, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = load i64*, i64** @degrees, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %86

34:                                               ; preds = %26, %1
  %35 = load i64, i64* @rand_type, align 8
  %36 = load i64, i64* @TYPE_0, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* @rand_type, align 8
  %40 = load i64*, i64** @state, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 -1
  store i64 %39, i64* %41, align 8
  br label %55

42:                                               ; preds = %34
  %43 = load i64, i64* @MAX_TYPES, align 8
  %44 = load i64*, i64** @rptr, align 8
  %45 = load i64*, i64** @state, align 8
  %46 = ptrtoint i64* %44 to i64
  %47 = ptrtoint i64* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = mul i64 %43, %49
  %51 = load i64, i64* @rand_type, align 8
  %52 = add i64 %50, %51
  %53 = load i64*, i64** @state, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 -1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %42, %38
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* @rand_type, align 8
  %57 = load i64*, i64** @degrees, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* @rand_deg, align 8
  %61 = load i64*, i64** @seps, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* @rand_sep, align 8
  %65 = load i64*, i64** %4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64* %66, i64** @state, align 8
  %67 = load i64, i64* @rand_type, align 8
  %68 = load i64, i64* @TYPE_0, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %55
  %71 = load i64*, i64** @state, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** @rptr, align 8
  %74 = load i64*, i64** @state, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @rand_sep, align 8
  %77 = add i64 %75, %76
  %78 = load i64, i64* @rand_deg, align 8
  %79 = urem i64 %77, %78
  %80 = getelementptr inbounds i64, i64* %74, i64 %79
  store i64* %80, i64** @fptr, align 8
  br label %81

81:                                               ; preds = %70, %55
  %82 = load i64*, i64** @state, align 8
  %83 = load i64, i64* @rand_deg, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64* %84, i64** @end_ptr, align 8
  %85 = load i8*, i8** %7, align 8
  store i8* %85, i8** %2, align 8
  br label %86

86:                                               ; preds = %81, %33
  %87 = load i8*, i8** %2, align 8
  ret i8* %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

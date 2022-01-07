; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr___vdso_gettc.c___vdso_init_hpet.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/x86/sys/extr___vdso_gettc.c___vdso_init_hpet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__vdso_init_hpet.devprefix = internal constant [10 x i8] c"/dev/hpet\00", align 1
@hpet_dev_map = common dso_local global i8** null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__vdso_init_hpet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vdso_init_hpet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = call i8* @stpcpy(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__vdso_init_hpet.devprefix, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %24, %1
  %16 = load i32, i32* %10, align 4
  %17 = srem i32 %16, 10
  %18 = add nsw i32 %17, 48
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  store i8 %19, i8* %20, align 1
  %22 = load i32, i32* %10, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %15, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %43, %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %6, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i8*, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8, i8* %6, align 1
  %42 = load i8*, i8** %4, align 8
  store i8 %41, i8* %42, align 1
  br label %43

43:                                               ; preds = %35
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %4, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load i8**, i8*** @hpet_dev_map, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %106

57:                                               ; preds = %48
  %58 = call i64 @cap_getmode(i32* %9)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %65 = load i32, i32* @O_RDONLY, align 4
  %66 = call i32 @_open(i8* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %79

68:                                               ; preds = %63, %60
  %69 = load i8**, i8*** @hpet_dev_map, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = bitcast i8** %72 to i64*
  %74 = load i8*, i8** %8, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load i8*, i8** @MAP_FAILED, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = call i64 @atomic_cmpset_rel_ptr(i64* %73, i64 %75, i64 %77)
  br label %106

79:                                               ; preds = %63
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = load i32, i32* @PROT_READ, align 4
  %82 = load i32, i32* @MAP_SHARED, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i8* @mmap(i32* null, i32 %80, i32 %81, i32 %82, i32 %83, i32 0)
  store i8* %84, i8** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @_close(i32 %85)
  %87 = load i8**, i8*** @hpet_dev_map, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = bitcast i8** %90 to i64*
  %92 = load i8*, i8** %8, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load i8*, i8** %7, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = call i64 @atomic_cmpset_rel_ptr(i64* %91, i64 %93, i64 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %79
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** @MAP_FAILED, align 8
  %101 = icmp ne i8* %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = call i32 @munmap(i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %56, %68, %102, %98, %79
  ret void
}

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i64 @cap_getmode(i32*) #1

declare dso_local i32 @_open(i8*, i32) #1

declare dso_local i64 @atomic_cmpset_rel_ptr(i64*, i64, i64) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_int64_to_strhex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_int64_to_strhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cvmx_debug_hexchar = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cvmx_debug_int64_to_strhex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_debug_int64_to_strhex(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 60
  %8 = and i32 %7, 15
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %5, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  %14 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 56
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 52
  %26 = and i32 %25, 15
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %29, i8* %31, align 1
  %32 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 48
  %35 = and i32 %34, 15
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  store i8 %38, i8* %40, align 1
  %41 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 44
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  store i8 %47, i8* %49, align 1
  %50 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 40
  %53 = and i32 %52, 15
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  store i8 %56, i8* %58, align 1
  %59 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %60 = load i32, i32* %4, align 4
  %61 = ashr i32 %60, 36
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 6
  store i8 %65, i8* %67, align 1
  %68 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %69 = load i32, i32* %4, align 4
  %70 = ashr i32 %69, 32
  %71 = and i32 %70, 15
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 7
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 28
  %80 = and i32 %79, 15
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %77, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  store i8 %83, i8* %85, align 1
  %86 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %87 = load i32, i32* %4, align 4
  %88 = ashr i32 %87, 24
  %89 = and i32 %88, 15
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 9
  store i8 %92, i8* %94, align 1
  %95 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %96 = load i32, i32* %4, align 4
  %97 = ashr i32 %96, 20
  %98 = and i32 %97, 15
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 10
  store i8 %101, i8* %103, align 1
  %104 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %105 = load i32, i32* %4, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 15
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 11
  store i8 %110, i8* %112, align 1
  %113 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %114 = load i32, i32* %4, align 4
  %115 = ashr i32 %114, 12
  %116 = and i32 %115, 15
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 12
  store i8 %119, i8* %121, align 1
  %122 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %123 = load i32, i32* %4, align 4
  %124 = ashr i32 %123, 8
  %125 = and i32 %124, 15
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 13
  store i8 %128, i8* %130, align 1
  %131 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %132 = load i32, i32* %4, align 4
  %133 = ashr i32 %132, 4
  %134 = and i32 %133, 15
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 14
  store i8 %137, i8* %139, align 1
  %140 = load i8*, i8** @cvmx_debug_hexchar, align 8
  %141 = load i32, i32* %4, align 4
  %142 = ashr i32 %141, 0
  %143 = and i32 %142, 15
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 15
  store i8 %146, i8* %148, align 1
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 16
  store i8 0, i8* %150, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

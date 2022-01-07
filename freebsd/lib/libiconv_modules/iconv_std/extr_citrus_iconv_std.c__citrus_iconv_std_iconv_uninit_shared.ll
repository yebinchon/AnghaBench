; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_uninit_shared.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_uninit_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_shared = type { %struct._citrus_iconv_std_shared* }
%struct._citrus_iconv_std_shared = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_iconv_shared*)* @_citrus_iconv_std_iconv_uninit_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_citrus_iconv_std_iconv_uninit_shared(%struct._citrus_iconv_shared* %0) #0 {
  %2 = alloca %struct._citrus_iconv_shared*, align 8
  %3 = alloca %struct._citrus_iconv_std_shared*, align 8
  store %struct._citrus_iconv_shared* %0, %struct._citrus_iconv_shared** %2, align 8
  %4 = load %struct._citrus_iconv_shared*, %struct._citrus_iconv_shared** %2, align 8
  %5 = getelementptr inbounds %struct._citrus_iconv_shared, %struct._citrus_iconv_shared* %4, i32 0, i32 0
  %6 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %5, align 8
  store %struct._citrus_iconv_std_shared* %6, %struct._citrus_iconv_std_shared** %3, align 8
  %7 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %3, align 8
  %8 = icmp eq %struct._citrus_iconv_std_shared* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %3, align 8
  %12 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_stdenc_close(i32 %13)
  %15 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %3, align 8
  %16 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @_stdenc_close(i32 %17)
  %19 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %3, align 8
  %20 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %19, i32 0, i32 0
  %21 = call i32 @close_srcs(i32* %20)
  %22 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %3, align 8
  %23 = call i32 @free(%struct._citrus_iconv_std_shared* %22)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @_stdenc_close(i32) #1

declare dso_local i32 @close_srcs(i32*) #1

declare dso_local i32 @free(%struct._citrus_iconv_std_shared*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

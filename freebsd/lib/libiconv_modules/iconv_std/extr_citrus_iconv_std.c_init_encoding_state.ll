; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_init_encoding_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_init_encoding_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_std_encoding = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_iconv_std_encoding*)* @init_encoding_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_encoding_state(%struct._citrus_iconv_std_encoding* %0) #0 {
  %2 = alloca %struct._citrus_iconv_std_encoding*, align 8
  store %struct._citrus_iconv_std_encoding* %0, %struct._citrus_iconv_std_encoding** %2, align 8
  %3 = load %struct._citrus_iconv_std_encoding*, %struct._citrus_iconv_std_encoding** %2, align 8
  %4 = getelementptr inbounds %struct._citrus_iconv_std_encoding, %struct._citrus_iconv_std_encoding* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct._citrus_iconv_std_encoding*, %struct._citrus_iconv_std_encoding** %2, align 8
  %9 = getelementptr inbounds %struct._citrus_iconv_std_encoding, %struct._citrus_iconv_std_encoding* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct._citrus_iconv_std_encoding*, %struct._citrus_iconv_std_encoding** %2, align 8
  %12 = getelementptr inbounds %struct._citrus_iconv_std_encoding, %struct._citrus_iconv_std_encoding* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @_stdenc_init_state(i32 %10, i64 %13)
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @_stdenc_init_state(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_get_state_desc_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_get_state_desc_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_std_encoding = type { i32, i32 }
%struct._stdenc_state_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@_STDENC_SDID_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv_std_encoding*, i32*)* @get_state_desc_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_state_desc_gen(%struct._citrus_iconv_std_encoding* %0, i32* %1) #0 {
  %3 = alloca %struct._citrus_iconv_std_encoding*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct._stdenc_state_desc, align 4
  %6 = alloca i32, align 4
  store %struct._citrus_iconv_std_encoding* %0, %struct._citrus_iconv_std_encoding** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct._citrus_iconv_std_encoding*, %struct._citrus_iconv_std_encoding** %3, align 8
  %8 = getelementptr inbounds %struct._citrus_iconv_std_encoding, %struct._citrus_iconv_std_encoding* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct._citrus_iconv_std_encoding*, %struct._citrus_iconv_std_encoding** %3, align 8
  %11 = getelementptr inbounds %struct._citrus_iconv_std_encoding, %struct._citrus_iconv_std_encoding* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @_STDENC_SDID_GENERIC, align 4
  %14 = call i32 @_stdenc_get_state_desc(i32 %9, i32 %12, i32 %13, %struct._stdenc_state_desc* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct._stdenc_state_desc, %struct._stdenc_state_desc* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @_stdenc_get_state_desc(i32, i32, i32, %struct._stdenc_state_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

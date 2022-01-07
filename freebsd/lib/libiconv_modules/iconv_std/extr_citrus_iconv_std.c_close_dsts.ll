; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_close_dsts.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_close_dsts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_std_dst_list = type { i32 }
%struct._citrus_iconv_std_dst = type { i32 }

@sd_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_iconv_std_dst_list*)* @close_dsts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_dsts(%struct._citrus_iconv_std_dst_list* %0) #0 {
  %2 = alloca %struct._citrus_iconv_std_dst_list*, align 8
  %3 = alloca %struct._citrus_iconv_std_dst*, align 8
  store %struct._citrus_iconv_std_dst_list* %0, %struct._citrus_iconv_std_dst_list** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct._citrus_iconv_std_dst_list*, %struct._citrus_iconv_std_dst_list** %2, align 8
  %6 = call %struct._citrus_iconv_std_dst* @TAILQ_FIRST(%struct._citrus_iconv_std_dst_list* %5)
  store %struct._citrus_iconv_std_dst* %6, %struct._citrus_iconv_std_dst** %3, align 8
  %7 = icmp ne %struct._citrus_iconv_std_dst* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct._citrus_iconv_std_dst_list*, %struct._citrus_iconv_std_dst_list** %2, align 8
  %10 = load %struct._citrus_iconv_std_dst*, %struct._citrus_iconv_std_dst** %3, align 8
  %11 = load i32, i32* @sd_entry, align 4
  %12 = call i32 @TAILQ_REMOVE(%struct._citrus_iconv_std_dst_list* %9, %struct._citrus_iconv_std_dst* %10, i32 %11)
  %13 = load %struct._citrus_iconv_std_dst*, %struct._citrus_iconv_std_dst** %3, align 8
  %14 = getelementptr inbounds %struct._citrus_iconv_std_dst, %struct._citrus_iconv_std_dst* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_csmapper_close(i32 %15)
  %17 = load %struct._citrus_iconv_std_dst*, %struct._citrus_iconv_std_dst** %3, align 8
  %18 = call i32 @free(%struct._citrus_iconv_std_dst* %17)
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local %struct._citrus_iconv_std_dst* @TAILQ_FIRST(%struct._citrus_iconv_std_dst_list*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct._citrus_iconv_std_dst_list*, %struct._citrus_iconv_std_dst*, i32) #1

declare dso_local i32 @_csmapper_close(i32) #1

declare dso_local i32 @free(%struct._citrus_iconv_std_dst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

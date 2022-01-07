; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_close_srcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c_close_srcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv_std_src_list = type { i32 }
%struct._citrus_iconv_std_src = type { i32 }

@ss_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_iconv_std_src_list*)* @close_srcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_srcs(%struct._citrus_iconv_std_src_list* %0) #0 {
  %2 = alloca %struct._citrus_iconv_std_src_list*, align 8
  %3 = alloca %struct._citrus_iconv_std_src*, align 8
  store %struct._citrus_iconv_std_src_list* %0, %struct._citrus_iconv_std_src_list** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct._citrus_iconv_std_src_list*, %struct._citrus_iconv_std_src_list** %2, align 8
  %6 = call %struct._citrus_iconv_std_src* @TAILQ_FIRST(%struct._citrus_iconv_std_src_list* %5)
  store %struct._citrus_iconv_std_src* %6, %struct._citrus_iconv_std_src** %3, align 8
  %7 = icmp ne %struct._citrus_iconv_std_src* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct._citrus_iconv_std_src_list*, %struct._citrus_iconv_std_src_list** %2, align 8
  %10 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %3, align 8
  %11 = load i32, i32* @ss_entry, align 4
  %12 = call i32 @TAILQ_REMOVE(%struct._citrus_iconv_std_src_list* %9, %struct._citrus_iconv_std_src* %10, i32 %11)
  %13 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %3, align 8
  %14 = getelementptr inbounds %struct._citrus_iconv_std_src, %struct._citrus_iconv_std_src* %13, i32 0, i32 0
  %15 = call i32 @close_dsts(i32* %14)
  %16 = load %struct._citrus_iconv_std_src*, %struct._citrus_iconv_std_src** %3, align 8
  %17 = call i32 @free(%struct._citrus_iconv_std_src* %16)
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local %struct._citrus_iconv_std_src* @TAILQ_FIRST(%struct._citrus_iconv_std_src_list*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct._citrus_iconv_std_src_list*, %struct._citrus_iconv_std_src*, i32) #1

declare dso_local i32 @close_dsts(i32*) #1

declare dso_local i32 @free(%struct._citrus_iconv_std_src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

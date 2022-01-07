; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_character.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, %struct.TYPE_6__*)* @_citrus_prop_read_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_prop_read_character(%struct._memstream* noalias %0, %struct.TYPE_6__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._memstream*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._memstream* %0, %struct._memstream** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct._memstream*, %struct._memstream** %4, align 8
  %9 = call i32 @_memstream_skip_ws(%struct._memstream* %8)
  %10 = load %struct._memstream*, %struct._memstream** %4, align 8
  %11 = call i32 @_memstream_getc(%struct._memstream* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 39
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct._memstream*, %struct._memstream** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @_memstream_ungetc(%struct._memstream* %15, i32 %16)
  %18 = load %struct._memstream*, %struct._memstream** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @_citrus_prop_read_chr(%struct._memstream* %18, %struct.TYPE_6__* %19)
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct._memstream*, %struct._memstream** %4, align 8
  %23 = call i32 @_citrus_prop_read_character_common(%struct._memstream* %22, i32* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct._memstream*, %struct._memstream** %4, align 8
  %34 = call i32 @_memstream_getc(%struct._memstream* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 39
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %26, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @_memstream_skip_ws(%struct._memstream*) #1

declare dso_local i32 @_memstream_getc(%struct._memstream*) #1

declare dso_local i32 @_memstream_ungetc(%struct._memstream*, i32) #1

declare dso_local i32 @_citrus_prop_read_chr(%struct._memstream*, %struct.TYPE_6__*) #1

declare dso_local i32 @_citrus_prop_read_character_common(%struct._memstream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

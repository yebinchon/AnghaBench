; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, %struct.TYPE_5__*)* @_citrus_prop_read_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_prop_read_bool(%struct._memstream* noalias %0, %struct.TYPE_5__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._memstream*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct._memstream* %0, %struct._memstream** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct._memstream*, %struct._memstream** %4, align 8
  %7 = call i32 @_memstream_skip_ws(%struct._memstream* %6)
  %8 = load %struct._memstream*, %struct._memstream** %4, align 8
  %9 = call i32 @_memstream_getc(%struct._memstream* %8)
  %10 = call signext i8 @_bcs_tolower(i32 %9)
  %11 = sext i8 %10 to i32
  switch i32 %11, label %64 [
    i32 116, label %12
    i32 102, label %35
  ]

12:                                               ; preds = %2
  %13 = load %struct._memstream*, %struct._memstream** %4, align 8
  %14 = call i32 @_memstream_getc(%struct._memstream* %13)
  %15 = call signext i8 @_bcs_tolower(i32 %14)
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 114
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct._memstream*, %struct._memstream** %4, align 8
  %20 = call i32 @_memstream_getc(%struct._memstream* %19)
  %21 = call signext i8 @_bcs_tolower(i32 %20)
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 117
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct._memstream*, %struct._memstream** %4, align 8
  %26 = call i32 @_memstream_getc(%struct._memstream* %25)
  %27 = call signext i8 @_bcs_tolower(i32 %26)
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 101
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %66

34:                                               ; preds = %24, %18, %12
  br label %64

35:                                               ; preds = %2
  %36 = load %struct._memstream*, %struct._memstream** %4, align 8
  %37 = call i32 @_memstream_getc(%struct._memstream* %36)
  %38 = call signext i8 @_bcs_tolower(i32 %37)
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 97
  br i1 %40, label %41, label %63

41:                                               ; preds = %35
  %42 = load %struct._memstream*, %struct._memstream** %4, align 8
  %43 = call i32 @_memstream_getc(%struct._memstream* %42)
  %44 = call signext i8 @_bcs_tolower(i32 %43)
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 108
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct._memstream*, %struct._memstream** %4, align 8
  %49 = call i32 @_memstream_getc(%struct._memstream* %48)
  %50 = call signext i8 @_bcs_tolower(i32 %49)
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 115
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct._memstream*, %struct._memstream** %4, align 8
  %55 = call i32 @_memstream_getc(%struct._memstream* %54)
  %56 = call signext i8 @_bcs_tolower(i32 %55)
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 101
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %66

63:                                               ; preds = %53, %47, %41, %35
  br label %64

64:                                               ; preds = %63, %2, %34
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %59, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @_memstream_skip_ws(%struct._memstream*) #1

declare dso_local signext i8 @_bcs_tolower(i32) #1

declare dso_local i32 @_memstream_getc(%struct._memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

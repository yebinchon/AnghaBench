; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_decode_tag_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_tagging.c_decode_tag_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.evbuffer*, i32)* @decode_tag_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_tag_internal(i32* %0, %struct.evbuffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %16 = call i64 @evbuffer_get_length(%struct.evbuffer* %15)
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 5
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i64 [ %21, %20 ], [ 5, %22 ]
  %25 = call i32* @evbuffer_pullup(%struct.evbuffer* %17, i64 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %95

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  %38 = load i32, i32* %36, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sge i32 %39, 28
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 28
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %95

45:                                               ; preds = %41
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, 127
  %48 = icmp sgt i32 %47, 15
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %95

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, 127
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 7
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %14, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %65

64:                                               ; preds = %51
  br label %30

65:                                               ; preds = %63, %30
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %95

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @evbuffer_drain(%struct.evbuffer* %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @INT_MAX, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i64, i64* @INT_MAX, align 8
  br label %92

88:                                               ; preds = %82
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  %91 = sext i32 %90 to i64
  br label %92

92:                                               ; preds = %88, %86
  %93 = phi i64 [ %87, %86 ], [ %91, %88 ]
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %68, %49, %44, %28
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32* @evbuffer_pullup(%struct.evbuffer*, i64) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

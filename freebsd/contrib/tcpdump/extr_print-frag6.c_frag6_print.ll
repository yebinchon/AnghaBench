; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-frag6.c_frag6_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-frag6.c_frag6_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ip6_frag = type { i32, i32 }
%struct.ip6_hdr = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"frag (0x%08x:%d|%ld)\00", align 1
@IP6F_OFF_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"frag (%d|%ld)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[|frag]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frag6_print(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip6_frag*, align 8
  %9 = alloca %struct.ip6_hdr*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.ip6_frag*
  store %struct.ip6_frag* %11, %struct.ip6_frag** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %13, %struct.ip6_hdr** %9, align 8
  %14 = load %struct.ip6_frag*, %struct.ip6_frag** %8, align 8
  %15 = bitcast %struct.ip6_frag* %14 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @ND_TCHECK(i64 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load %struct.ip6_frag*, %struct.ip6_frag** %8, align 8
  %25 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %24, i32 0, i32 1
  %26 = call i32 @EXTRACT_32BITS(i32* %25)
  %27 = load %struct.ip6_frag*, %struct.ip6_frag** %8, align 8
  %28 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %27, i32 0, i32 0
  %29 = call i32 @EXTRACT_16BITS(i32* %28)
  %30 = load i32, i32* @IP6F_OFF_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %32, i32 0, i32 0
  %34 = call i32 @EXTRACT_16BITS(i32* %33)
  %35 = sext i32 %34 to i64
  %36 = add i64 4, %35
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = sub i64 %36, %42
  %44 = sub i64 %43, 8
  %45 = inttoptr i64 %44 to %struct.TYPE_4__*
  %46 = call i32 @ND_PRINT(%struct.TYPE_4__* %45)
  br label %69

47:                                               ; preds = %3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = load %struct.ip6_frag*, %struct.ip6_frag** %8, align 8
  %50 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %49, i32 0, i32 0
  %51 = call i32 @EXTRACT_16BITS(i32* %50)
  %52 = load i32, i32* @IP6F_OFF_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.ip6_hdr*, %struct.ip6_hdr** %9, align 8
  %55 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %54, i32 0, i32 0
  %56 = call i32 @EXTRACT_16BITS(i32* %55)
  %57 = sext i32 %56 to i64
  %58 = add i64 4, %57
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = sub i64 %58, %64
  %66 = sub i64 %65, 8
  %67 = inttoptr i64 %66 to %struct.TYPE_4__*
  %68 = call i32 @ND_PRINT(%struct.TYPE_4__* %67)
  br label %69

69:                                               ; preds = %47, %22
  %70 = load %struct.ip6_frag*, %struct.ip6_frag** %8, align 8
  %71 = getelementptr inbounds %struct.ip6_frag, %struct.ip6_frag* %70, i32 0, i32 0
  %72 = call i32 @EXTRACT_16BITS(i32* %71)
  %73 = load i32, i32* @IP6F_OFF_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %83

77:                                               ; preds = %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([2 x i8]* @.str.2 to %struct.TYPE_4__*))
  store i32 8, i32* %4, align 4
  br label %83

80:                                               ; No predecessors!
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = call i32 @ND_PRINT(%struct.TYPE_4__* bitcast ([8 x i8]* @.str.3 to %struct.TYPE_4__*))
  store i32 -1, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %77, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_4__*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

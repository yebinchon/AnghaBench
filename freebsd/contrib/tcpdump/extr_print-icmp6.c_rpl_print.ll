; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-icmp6.c_rpl_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.icmp6_hdr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c", (SEC) [worktodo]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c", (CLR)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DODAG Information Solicitation\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DODAG Information Object\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Destination Advertisement Object\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Destination Advertisement Object Ack\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"RPL message, unknown code %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.icmp6_hdr*, i32*, i32)* @rpl_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpl_print(%struct.TYPE_7__* %0, %struct.icmp6_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.icmp6_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.icmp6_hdr* %1, %struct.icmp6_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  store i32 %14, i32* %9, align 4
  %15 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([19 x i8]* @.str to %struct.TYPE_7__*))
  br label %86

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_7__*))
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %77 [
    i32 130, label %29
    i32 131, label %38
    i32 129, label %51
    i32 128, label %64
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([31 x i8]* @.str.2 to %struct.TYPE_7__*))
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %29
  br label %85

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([25 x i8]* @.str.3 to %struct.TYPE_7__*))
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @rpl_dio_print(%struct.TYPE_7__* %46, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  br label %85

51:                                               ; preds = %27
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([33 x i8]* @.str.4 to %struct.TYPE_7__*))
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @rpl_dao_print(%struct.TYPE_7__* %59, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  br label %85

64:                                               ; preds = %27
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([37 x i8]* @.str.5 to %struct.TYPE_7__*))
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @rpl_daoack_print(%struct.TYPE_7__* %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %64
  br label %85

77:                                               ; preds = %27
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to %struct.TYPE_7__*
  %84 = call i32 @ND_PRINT(%struct.TYPE_7__* %83)
  br label %85

85:                                               ; preds = %77, %76, %63, %50, %37
  br label %86

86:                                               ; preds = %85, %21
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @rpl_dio_print(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @rpl_dao_print(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @rpl_daoack_print(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

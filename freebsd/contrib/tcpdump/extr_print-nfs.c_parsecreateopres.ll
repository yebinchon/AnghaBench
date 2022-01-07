; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsecreateopres.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsecreateopres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c" dir attr:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32*, i32)* @parsecreateopres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parsecreateopres(%struct.TYPE_8__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @parsestatus(%struct.TYPE_8__* %9, i32* %10, i32* %8)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %69

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @parse_wcc_data(%struct.TYPE_8__* %18, i32* %19, i32 %20)
  store i32* %21, i32** %6, align 8
  br label %66

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TCHECK(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @EXTRACT_32BITS(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %33, i32** %4, align 8
  br label %69

34:                                               ; preds = %22
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @parsefh(%struct.TYPE_8__* %37, i32* %38, i32 1)
  store i32* %39, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32* null, i32** %4, align 8
  br label %69

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32* @parse_post_op_attr(%struct.TYPE_8__* %46, i32* %47, i32 %48)
  store i32* %49, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32* null, i32** %4, align 8
  br label %69

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([11 x i8]* @.str to %struct.TYPE_8__*))
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32* @parse_wcc_data(%struct.TYPE_8__* %60, i32* %61, i32 %62)
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %17
  %67 = load i32*, i32** %6, align 8
  store i32* %67, i32** %4, align 8
  br label %69

68:                                               ; No predecessors!
  store i32* null, i32** %4, align 8
  br label %69

69:                                               ; preds = %68, %66, %51, %41, %31, %13
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32* @parsestatus(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32* @parse_wcc_data(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32* @parsefh(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32* @parse_post_op_attr(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

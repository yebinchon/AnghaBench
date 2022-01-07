; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_nbt_udp138_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_nbt_udp138_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@startbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"NBT UDP PACKET(138)\00", align 1
@.str.1 = private unnamed_addr constant [119 x i8] c"\0A>>> NBT UDP PACKET(138) Res=[rw] ID=[rw] IP=[b.b.b.b] Port=[rd] Length=[rd] Res2=[rw]\0ASourceName=[n1]\0ADestName=[n1]\0A#\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\FFSMB\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nbt_udp138_print(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ugt i32* %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ule i32* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %62

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** @startbuf, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([20 x i8]* @.str to %struct.TYPE_6__*))
  br label %62

35:                                               ; preds = %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @smb_fdata(%struct.TYPE_6__* %36, i32* %37, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0), i32* %38, i32 0)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32*, i32** %7, align 8
  %46 = icmp uge i32* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %59

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @memcmp(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @print_smb(%struct.TYPE_6__* %53, i32* %54, i32* %55)
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.3 to %struct.TYPE_6__*))
  br label %62

62:                                               ; preds = %59, %32, %25
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32* @smb_fdata(%struct.TYPE_6__*, i32*, i8*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @print_smb(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

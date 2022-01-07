; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_param_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_param_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"FX\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NEC\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Pioneer\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SHARP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_param_fixup(%struct.ata_params* %0) #0 {
  %2 = alloca %struct.ata_params*, align 8
  %3 = alloca i32*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %2, align 8
  %4 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %5 = bitcast %struct.ata_params* %4 to i32*
  store i32* %5, i32** %3, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %9 = bitcast %struct.ata_params* %8 to i32*
  %10 = getelementptr inbounds i32, i32* %9, i64 6
  %11 = icmp ult i32* %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16toh(i32 %14)
  %16 = load i32*, i32** %3, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %3, align 8
  br label %6

20:                                               ; preds = %6
  %21 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %22 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strncmp(i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %28 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strncmp(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %34 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strncmp(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %40 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strncmp(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %46 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ata_bswap(i32 %47, i32 4)
  %49 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %50 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ata_bswap(i32 %51, i32 4)
  %53 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %54 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ata_bswap(i32 %55, i32 4)
  br label %57

57:                                               ; preds = %44, %38, %32, %26, %20
  %58 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %59 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ata_btrim(i32 %60, i32 4)
  %62 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %63 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %66 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ata_bpack(i32 %64, i32 %67, i32 4)
  %69 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %70 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ata_btrim(i32 %71, i32 4)
  %73 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %74 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %77 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ata_bpack(i32 %75, i32 %78, i32 4)
  %80 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %81 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ata_btrim(i32 %82, i32 4)
  %84 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %85 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ata_params*, %struct.ata_params** %2, align 8
  %88 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ata_bpack(i32 %86, i32 %89, i32 4)
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @ata_bswap(i32, i32) #1

declare dso_local i32 @ata_btrim(i32, i32) #1

declare dso_local i32 @ata_bpack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

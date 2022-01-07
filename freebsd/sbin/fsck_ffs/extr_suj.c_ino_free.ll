; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.suj_cg = type { i32, %struct.cg* }
%struct.cg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@fs = common dso_local global %struct.TYPE_5__* null, align 8
@freeinos = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@freedir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ino_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ino_free(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.suj_cg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cg*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ino_to_cg(%struct.TYPE_5__* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fs, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = srem i32 %13, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.suj_cg* @cg_lookup(i32 %18)
  store %struct.suj_cg* %19, %struct.suj_cg** %6, align 8
  %20 = load %struct.suj_cg*, %struct.suj_cg** %6, align 8
  %21 = getelementptr inbounds %struct.suj_cg, %struct.suj_cg* %20, i32 0, i32 1
  %22 = load %struct.cg*, %struct.cg** %21, align 8
  store %struct.cg* %22, %struct.cg** %8, align 8
  %23 = load %struct.cg*, %struct.cg** %8, align 8
  %24 = call i32* @cg_inosused(%struct.cg* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @isclr(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

30:                                               ; preds = %2
  %31 = load i32, i32* @freeinos, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @freeinos, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @clrbit(i32* %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.cg*, %struct.cg** %8, align 8
  %38 = getelementptr inbounds %struct.cg, %struct.cg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.cg*, %struct.cg** %8, align 8
  %44 = getelementptr inbounds %struct.cg, %struct.cg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.cg*, %struct.cg** %8, align 8
  %47 = getelementptr inbounds %struct.cg, %struct.cg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @IFMT, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @IFDIR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load i32, i32* @freedir, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @freedir, align 4
  %59 = load %struct.cg*, %struct.cg** %8, align 8
  %60 = getelementptr inbounds %struct.cg, %struct.cg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %45
  %65 = load %struct.suj_cg*, %struct.suj_cg** %6, align 8
  %66 = getelementptr inbounds %struct.suj_cg, %struct.suj_cg* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ino_to_cg(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.suj_cg* @cg_lookup(i32) #1

declare dso_local i32* @cg_inosused(%struct.cg*) #1

declare dso_local i64 @isclr(i32*, i32) #1

declare dso_local i32 @clrbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_import_key_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_import_key_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keybuf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GELI_MAX_KEYS = common dso_local global i32 0, align 4
@saved_keys = common dso_local global i32* null, align 8
@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@KEYBUF_TYPE_NONE = common dso_local global i32 0, align 4
@nsaved_keys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geli_import_key_buffer(%struct.keybuf* %0) #0 {
  %2 = alloca %struct.keybuf*, align 8
  %3 = alloca i32, align 4
  store %struct.keybuf* %0, %struct.keybuf** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %50, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.keybuf*, %struct.keybuf** %2, align 8
  %7 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GELI_MAX_KEYS, align 4
  %13 = icmp ult i32 %11, %12
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i1 [ false, %4 ], [ %13, %10 ]
  br i1 %15, label %16, label %53

16:                                               ; preds = %14
  %17 = load i32*, i32** @saved_keys, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.keybuf*, %struct.keybuf** %2, align 8
  %23 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %31 = call i32 @memcpy(i32 %21, i32 %29, i32 %30)
  %32 = load %struct.keybuf*, %struct.keybuf** %2, align 8
  %33 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %41 = call i32 @explicit_bzero(i32 %39, i32 %40)
  %42 = load i32, i32* @KEYBUF_TYPE_NONE, align 4
  %43 = load %struct.keybuf*, %struct.keybuf** %2, align 8
  %44 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %16
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %4

53:                                               ; preds = %14
  %54 = load %struct.keybuf*, %struct.keybuf** %2, align 8
  %55 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* @nsaved_keys, align 4
  %57 = load %struct.keybuf*, %struct.keybuf** %2, align 8
  %58 = getelementptr inbounds %struct.keybuf, %struct.keybuf* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @explicit_bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c__initialize_ser_dos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c__initialize_ser_dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@dos_ops = common dso_local global i32 0, align 4
@ICU_MASK = common dso_local global i32 0, align 4
@icu_oldmask = common dso_local global i32 0, align 4
@intrupts = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"com1base\00", align 1
@class_obscure = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@ports = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Set COM1 base i/o port address.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"com1irq\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Set COM1 interrupt request.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"com2base\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Set COM2 base i/o port address.\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"com2irq\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Set COM2 interrupt request.\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"com3base\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Set COM3 base i/o port address.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"com3irq\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Set COM3 interrupt request.\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"com4base\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Set COM4 base i/o port address.\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"com4irq\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Set COM4 interrupt request.\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@dos_info = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"Print DOS serial port status.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_ser_dos() #0 {
  %1 = call i32 @serial_add_interface(i32* @dos_ops)
  %2 = load i32, i32* @ICU_MASK, align 4
  %3 = call i32 @inportb(i32 %2)
  store i32 %3, i32* @icu_oldmask, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intrupts, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intrupts, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intrupts, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @class_obscure, align 4
  %14 = load i32, i32* @var_zinteger, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i8* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %20 = call i32 @add_show_from_set(i32 %19, i32* @showlist)
  %21 = load i32, i32* @class_obscure, align 4
  %22 = load i32, i32* @var_zinteger, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %22, i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* @setlist)
  %28 = call i32 @add_show_from_set(i32 %27, i32* @showlist)
  %29 = load i32, i32* @class_obscure, align 4
  %30 = load i32, i32* @var_zinteger, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30, i8* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32* @setlist)
  %36 = call i32 @add_show_from_set(i32 %35, i32* @showlist)
  %37 = load i32, i32* @class_obscure, align 4
  %38 = load i32, i32* @var_zinteger, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, i8* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32* @setlist)
  %44 = call i32 @add_show_from_set(i32 %43, i32* @showlist)
  %45 = load i32, i32* @class_obscure, align 4
  %46 = load i32, i32* @var_zinteger, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %45, i32 %46, i8* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32* @setlist)
  %52 = call i32 @add_show_from_set(i32 %51, i32* @showlist)
  %53 = load i32, i32* @class_obscure, align 4
  %54 = load i32, i32* @var_zinteger, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %53, i32 %54, i8* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32* @setlist)
  %60 = call i32 @add_show_from_set(i32 %59, i32* @showlist)
  %61 = load i32, i32* @class_obscure, align 4
  %62 = load i32, i32* @var_zinteger, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = bitcast i32* %65 to i8*
  %67 = call i32 @add_set_cmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %61, i32 %62, i8* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32* @setlist)
  %68 = call i32 @add_show_from_set(i32 %67, i32* @showlist)
  %69 = load i32, i32* @class_obscure, align 4
  %70 = load i32, i32* @var_zinteger, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ports, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @add_set_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %69, i32 %70, i8* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32* @setlist)
  %76 = call i32 @add_show_from_set(i32 %75, i32* @showlist)
  %77 = load i32, i32* @dos_info, align 4
  %78 = call i32 @add_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32 @serial_add_interface(i32*) #1

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @add_info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

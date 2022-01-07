; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_msg_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_msg_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%union.uni_msgall*, %struct.unicx*)*, i32 }
%union.uni_msgall = type { i32 }
%struct.unicx = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@uni_msgtable = common dso_local global %struct.TYPE_2__** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"0x%02x(ERROR)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.uni_msgall*, %struct.unicx*)* @uni_print_msg_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_print_msg_internal(i32 %0, %union.uni_msgall* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.uni_msgall*, align 8
  %6 = alloca %struct.unicx*, align 8
  store i32 %0, i32* %4, align 4
  store %union.uni_msgall* %1, %union.uni_msgall** %5, align 8
  store %struct.unicx* %2, %struct.unicx** %6, align 8
  %7 = load %struct.unicx*, %struct.unicx** %6, align 8
  %8 = call i32 @uni_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.unicx* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 256
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @uni_msgtable, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %11, %3
  %19 = load %struct.unicx*, %struct.unicx** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %56

22:                                               ; preds = %11
  %23 = load %struct.unicx*, %struct.unicx** %6, align 8
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @uni_msgtable, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %union.uni_msgall*, %union.uni_msgall** %5, align 8
  %33 = bitcast %union.uni_msgall* %32 to i32*
  %34 = load %struct.unicx*, %struct.unicx** %6, align 8
  %35 = call i32 @uni_print_msghdr_internal(i32* %33, %struct.unicx* %34)
  %36 = load %struct.unicx*, %struct.unicx** %6, align 8
  %37 = getelementptr inbounds %struct.unicx, %struct.unicx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.unicx*, %struct.unicx** %6, align 8
  %41 = call i32 @uni_print_eol(%struct.unicx* %40)
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @uni_msgtable, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%union.uni_msgall*, %struct.unicx*)*, i32 (%union.uni_msgall*, %struct.unicx*)** %47, align 8
  %49 = load %union.uni_msgall*, %union.uni_msgall** %5, align 8
  %50 = load %struct.unicx*, %struct.unicx** %6, align 8
  %51 = call i32 %48(%union.uni_msgall* %49, %struct.unicx* %50)
  %52 = load %struct.unicx*, %struct.unicx** %6, align 8
  %53 = getelementptr inbounds %struct.unicx, %struct.unicx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %22, %18
  %57 = load %struct.unicx*, %struct.unicx** %6, align 8
  %58 = getelementptr inbounds %struct.unicx, %struct.unicx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.unicx*, %struct.unicx** %6, align 8
  %63 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @uni_entry(i8*, %struct.unicx*) #1

declare dso_local i32 @uni_printf(%struct.unicx*, i8*, ...) #1

declare dso_local i32 @uni_print_msghdr_internal(i32*, %struct.unicx*) #1

declare dso_local i32 @uni_print_eol(%struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

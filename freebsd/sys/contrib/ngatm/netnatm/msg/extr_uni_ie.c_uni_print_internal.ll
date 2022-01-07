; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_uni_print_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.unicx*)*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.unicx = type { i64, i32 }
%struct.uni_all = type { i32, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@uni_msgtable = common dso_local global %struct.TYPE_3__** null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"0x%02x(ERROR)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_all*, %struct.unicx*)* @uni_print_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uni_print_internal(%struct.uni_all* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_all*, align 8
  %4 = alloca %struct.unicx*, align 8
  store %struct.uni_all* %0, %struct.uni_all** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %5 = load %struct.unicx*, %struct.unicx** %4, align 8
  %6 = call i32 @uni_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.unicx* %5)
  %7 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %8 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 256
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @uni_msgtable, align 8
  %13 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %14 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %11, %2
  %21 = load %struct.unicx*, %struct.unicx** %4, align 8
  %22 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %23 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %66

26:                                               ; preds = %11
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @uni_msgtable, align 8
  %29 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %30 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %39 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.unicx*, %struct.unicx** %4, align 8
  %42 = call i32 @uni_print_msghdr_internal(i32* %40, %struct.unicx* %41)
  %43 = load %struct.unicx*, %struct.unicx** %4, align 8
  %44 = getelementptr inbounds %struct.unicx, %struct.unicx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.unicx*, %struct.unicx** %4, align 8
  %48 = call i32 @uni_print_eol(%struct.unicx* %47)
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @uni_msgtable, align 8
  %50 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %51 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*, %struct.unicx*)*, i32 (%struct.TYPE_4__*, %struct.unicx*)** %56, align 8
  %58 = load %struct.uni_all*, %struct.uni_all** %3, align 8
  %59 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %58, i32 0, i32 1
  %60 = load %struct.unicx*, %struct.unicx** %4, align 8
  %61 = call i32 %57(%struct.TYPE_4__* %59, %struct.unicx* %60)
  %62 = load %struct.unicx*, %struct.unicx** %4, align 8
  %63 = getelementptr inbounds %struct.unicx, %struct.unicx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %26, %20
  %67 = load %struct.unicx*, %struct.unicx** %4, align 8
  %68 = getelementptr inbounds %struct.unicx, %struct.unicx* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.unicx*, %struct.unicx** %4, align 8
  %73 = call i32 (%struct.unicx*, i8*, ...) @uni_printf(%struct.unicx* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
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

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_switch_iter_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_switch_iter_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.iter_user_data = type { i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"SWITCH: node %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*)* @switch_iter_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_iter_func(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iter_user_data*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iter_user_data*
  store %struct.iter_user_data* %9, %struct.iter_user_data** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %10)
  %12 = load %struct.iter_user_data*, %struct.iter_user_data** %7, align 8
  %13 = getelementptr inbounds %struct.iter_user_data, %struct.iter_user_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %66

29:                                               ; preds = %21, %16, %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = load %struct.iter_user_data*, %struct.iter_user_data** %7, align 8
  %32 = getelementptr inbounds %struct.iter_user_data, %struct.iter_user_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @out_switch(%struct.TYPE_10__* %30, i32 %33, i32* null, i32* null, i32* null)
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %63, %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %5, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load %struct.iter_user_data*, %struct.iter_user_data** %7, align 8
  %59 = getelementptr inbounds %struct.iter_user_data, %struct.iter_user_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @out_switch_port(%struct.TYPE_9__* %57, i32 %60, i32* null)
  br label %62

62:                                               ; preds = %56, %51, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %35

66:                                               ; preds = %28, %35
  ret void
}

declare dso_local i32 @DEBUG(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @out_switch(%struct.TYPE_10__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @out_switch_port(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop.c_eloop_sock_table_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_eloop.c_eloop_sock_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eloop_sock_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"ELOOP: remaining socket: sock=%d eloop_data=%p user_data=%p handler=%p\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"eloop unregistered socket handler\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"eloop sock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eloop_sock_table*)* @eloop_sock_table_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eloop_sock_table_destroy(%struct.eloop_sock_table* %0) #0 {
  %2 = alloca %struct.eloop_sock_table*, align 8
  %3 = alloca i32, align 4
  store %struct.eloop_sock_table* %0, %struct.eloop_sock_table** %2, align 8
  %4 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %5 = icmp ne %struct.eloop_sock_table* %4, null
  br i1 %5, label %6, label %79

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %71, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %10 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %15 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i1 [ false, %7 ], [ %17, %13 ]
  br i1 %19, label %20, label %74

20:                                               ; preds = %18
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %23 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %31 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %39 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %47 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %37, i32 %45, i32 %53)
  %55 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %56 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wpa_trace_dump_funcname(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %65 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = call i32 @wpa_trace_dump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %69)
  br label %71

71:                                               ; preds = %20
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %7

74:                                               ; preds = %18
  %75 = load %struct.eloop_sock_table*, %struct.eloop_sock_table** %2, align 8
  %76 = getelementptr inbounds %struct.eloop_sock_table, %struct.eloop_sock_table* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = call i32 @os_free(%struct.TYPE_3__* %77)
  br label %79

79:                                               ; preds = %74, %1
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_trace_dump_funcname(i8*, i32) #1

declare dso_local i32 @wpa_trace_dump(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @os_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

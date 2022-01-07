; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_base_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_base = type { i32, %struct.comm_base*, i32, i32 }
%struct.internal_base = type { i32, %struct.internal_base*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%s %s uses %s method.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comm_base* @comm_base_create(i32 %0) #0 {
  %2 = alloca %struct.comm_base*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.comm_base*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = call i64 @calloc(i32 1, i32 24)
  %9 = inttoptr i64 %8 to %struct.comm_base*
  store %struct.comm_base* %9, %struct.comm_base** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %10 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %11 = icmp ne %struct.comm_base* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.comm_base* null, %struct.comm_base** %2, align 8
  br label %73

13:                                               ; preds = %1
  %14 = call i64 @calloc(i32 1, i32 24)
  %15 = inttoptr i64 %14 to %struct.internal_base*
  %16 = bitcast %struct.internal_base* %15 to %struct.comm_base*
  %17 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %18 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %17, i32 0, i32 1
  store %struct.comm_base* %16, %struct.comm_base** %18, align 8
  %19 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %20 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %19, i32 0, i32 1
  %21 = load %struct.comm_base*, %struct.comm_base** %20, align 8
  %22 = icmp ne %struct.comm_base* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %25 = bitcast %struct.comm_base* %24 to %struct.internal_base*
  %26 = call i32 @free(%struct.internal_base* %25)
  store %struct.comm_base* null, %struct.comm_base** %2, align 8
  br label %73

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %30 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %29, i32 0, i32 1
  %31 = load %struct.comm_base*, %struct.comm_base** %30, align 8
  %32 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %31, i32 0, i32 3
  %33 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %34 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %33, i32 0, i32 1
  %35 = load %struct.comm_base*, %struct.comm_base** %34, align 8
  %36 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %35, i32 0, i32 2
  %37 = call i32 @ub_default_event_base(i32 %28, i32* %32, i32* %36)
  %38 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %39 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %38, i32 0, i32 1
  %40 = load %struct.comm_base*, %struct.comm_base** %39, align 8
  %41 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %43 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %42, i32 0, i32 1
  %44 = load %struct.comm_base*, %struct.comm_base** %43, align 8
  %45 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %27
  %49 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %50 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %49, i32 0, i32 1
  %51 = load %struct.comm_base*, %struct.comm_base** %50, align 8
  %52 = bitcast %struct.comm_base* %51 to %struct.internal_base*
  %53 = call i32 @free(%struct.internal_base* %52)
  %54 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %55 = bitcast %struct.comm_base* %54 to %struct.internal_base*
  %56 = call i32 @free(%struct.internal_base* %55)
  store %struct.comm_base* null, %struct.comm_base** %2, align 8
  br label %73

57:                                               ; preds = %27
  %58 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %59 = bitcast %struct.comm_base* %58 to %struct.internal_base*
  %60 = call i32 @ub_comm_base_now(%struct.internal_base* %59)
  %61 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  %62 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %61, i32 0, i32 1
  %63 = load %struct.comm_base*, %struct.comm_base** %62, align 8
  %64 = getelementptr inbounds %struct.comm_base, %struct.comm_base* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ub_get_event_sys(i32 %65, i8** %5, i8** %6, i8** %7)
  %67 = load i32, i32* @VERB_ALGO, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @verbose(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69, i8* %70)
  %72 = load %struct.comm_base*, %struct.comm_base** %4, align 8
  store %struct.comm_base* %72, %struct.comm_base** %2, align 8
  br label %73

73:                                               ; preds = %57, %48, %23, %12
  %74 = load %struct.comm_base*, %struct.comm_base** %2, align 8
  ret %struct.comm_base* %74
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.internal_base*) #1

declare dso_local i32 @ub_default_event_base(i32, i32*, i32*) #1

declare dso_local i32 @ub_comm_base_now(%struct.internal_base*) #1

declare dso_local i32 @ub_get_event_sys(i32, i8**, i8**, i8**) #1

declare dso_local i32 @verbose(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

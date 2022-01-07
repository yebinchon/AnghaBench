; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_blacklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_utils.c_val_blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.sock_list = type { %struct.sock_list* }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"blacklist add: cache\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"blacklist add\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_blacklist(%struct.sock_list** %0, %struct.regional* %1, %struct.sock_list* %2, i32 %3) #0 {
  %5 = alloca %struct.sock_list**, align 8
  %6 = alloca %struct.regional*, align 8
  %7 = alloca %struct.sock_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock_list*, align 8
  store %struct.sock_list** %0, %struct.sock_list*** %5, align 8
  store %struct.regional* %1, %struct.regional** %6, align 8
  store %struct.sock_list* %2, %struct.sock_list** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @verbosity, align 8
  %11 = load i64, i64* @VERB_ALGO, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %4
  %14 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %15 = load %struct.sock_list*, %struct.sock_list** %14, align 8
  store %struct.sock_list* %15, %struct.sock_list** %9, align 8
  br label %16

16:                                               ; preds = %23, %13
  %17 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %18 = icmp ne %struct.sock_list* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64, i64* @VERB_ALGO, align 8
  %21 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %22 = call i32 @sock_list_logentry(i64 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.sock_list* %21)
  br label %23

23:                                               ; preds = %19
  %24 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %25 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %24, i32 0, i32 0
  %26 = load %struct.sock_list*, %struct.sock_list** %25, align 8
  store %struct.sock_list* %26, %struct.sock_list** %9, align 8
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %29 = icmp ne %struct.sock_list* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @VERB_ALGO, align 8
  %32 = call i32 @verbose(i64 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  store %struct.sock_list* %34, %struct.sock_list** %9, align 8
  br label %35

35:                                               ; preds = %42, %33
  %36 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %37 = icmp ne %struct.sock_list* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* @VERB_ALGO, align 8
  %40 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %41 = call i32 @sock_list_logentry(i64 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.sock_list* %40)
  br label %42

42:                                               ; preds = %38
  %43 = load %struct.sock_list*, %struct.sock_list** %9, align 8
  %44 = getelementptr inbounds %struct.sock_list, %struct.sock_list* %43, i32 0, i32 0
  %45 = load %struct.sock_list*, %struct.sock_list** %44, align 8
  store %struct.sock_list* %45, %struct.sock_list** %9, align 8
  br label %35

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %4
  %48 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %49 = icmp ne %struct.sock_list* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %52 = load %struct.sock_list*, %struct.sock_list** %51, align 8
  %53 = icmp ne %struct.sock_list* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %56 = load %struct.regional*, %struct.regional** %6, align 8
  %57 = call i32 @sock_list_insert(%struct.sock_list** %55, i32* null, i32 0, %struct.regional* %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %72

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %64 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %65 = call i32 @sock_list_prepend(%struct.sock_list** %63, %struct.sock_list* %64)
  br label %71

66:                                               ; preds = %59
  %67 = load %struct.sock_list**, %struct.sock_list*** %5, align 8
  %68 = load %struct.regional*, %struct.regional** %6, align 8
  %69 = load %struct.sock_list*, %struct.sock_list** %7, align 8
  %70 = call i32 @sock_list_merge(%struct.sock_list** %67, %struct.regional* %68, %struct.sock_list* %69)
  br label %71

71:                                               ; preds = %66, %62
  br label %72

72:                                               ; preds = %71, %58
  ret void
}

declare dso_local i32 @sock_list_logentry(i64, i8*, %struct.sock_list*) #1

declare dso_local i32 @verbose(i64, i8*) #1

declare dso_local i32 @sock_list_insert(%struct.sock_list**, i32*, i32, %struct.regional*) #1

declare dso_local i32 @sock_list_prepend(%struct.sock_list**, %struct.sock_list*) #1

declare dso_local i32 @sock_list_merge(%struct.sock_list**, %struct.regional*, %struct.sock_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbyht.c_gethostent_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_gethostbyht.c_gethostent_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }
%struct.hostent_data = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@RES_INIT = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@RES_USE_INET6 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gethostent_r(%struct.hostent* %0, i8* %1, i64 %2, %struct.hostent** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hostent**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hostent_data*, align 8
  %13 = alloca %struct.hostent, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.hostent* %0, %struct.hostent** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.hostent** %3, %struct.hostent*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = call %struct.TYPE_6__* (...) @__res_state()
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RES_INIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %24 = call i32 @res_ninit(%struct.TYPE_6__* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %28 = load i32, i32* @NETDB_INTERNAL, align 4
  %29 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_6__* %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  store i32 -1, i32* %6, align 4
  br label %81

34:                                               ; preds = %22, %5
  %35 = call %struct.hostent_data* (...) @__hostent_data_init()
  store %struct.hostent_data* %35, %struct.hostent_data** %12, align 8
  %36 = icmp eq %struct.hostent_data* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = load i32, i32* @NETDB_INTERNAL, align 4
  %40 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_6__* %38, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  store i32 -1, i32* %6, align 4
  br label %81

45:                                               ; preds = %34
  %46 = load %struct.hostent_data*, %struct.hostent_data** %12, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RES_USE_INET6, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %53 = call i64 @gethostent_p(%struct.hostent* %13, %struct.hostent_data* %46, i32 %51, %struct.TYPE_6__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %81

56:                                               ; preds = %45
  %57 = load %struct.hostent*, %struct.hostent** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @__copy_hostent(%struct.hostent* %13, %struct.hostent* %57, i8* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = load i32, i32* @NETDB_INTERNAL, align 4
  %65 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_6__* %63, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i64, i64* @errno, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i64, i64* @errno, align 8
  br label %75

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i64 [ %73, %72 ], [ -1, %74 ]
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %6, align 4
  br label %81

78:                                               ; preds = %56
  %79 = load %struct.hostent*, %struct.hostent** %7, align 8
  %80 = load %struct.hostent**, %struct.hostent*** %10, align 8
  store %struct.hostent* %79, %struct.hostent** %80, align 8
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %75, %55, %37, %26
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_6__* @__res_state(...) #1

declare dso_local i32 @res_ninit(%struct.TYPE_6__*) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.hostent_data* @__hostent_data_init(...) #1

declare dso_local i64 @gethostent_p(%struct.hostent*, %struct.hostent_data*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @__copy_hostent(%struct.hostent*, %struct.hostent*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

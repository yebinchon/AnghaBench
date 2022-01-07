; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetbyht.c_getnetent_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetbyht.c_getnetent_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netent = type { i32 }
%struct.netent_data = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NETDB_INTERNAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnetent_r(%struct.netent* %0, i8* %1, i64 %2, %struct.netent** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.netent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netent**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.netent_data*, align 8
  %13 = alloca %struct.netent, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  store %struct.netent* %0, %struct.netent** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.netent** %3, %struct.netent*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = call %struct.TYPE_4__* (...) @__res_state()
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.netent_data* (...) @__netent_data_init()
  store %struct.netent_data* %16, %struct.netent_data** %12, align 8
  %17 = icmp eq %struct.netent_data* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %20 = load i32, i32* @NETDB_INTERNAL, align 4
  %21 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  store i32 -1, i32* %6, align 4
  br label %56

26:                                               ; preds = %5
  %27 = load %struct.netent_data*, %struct.netent_data** %12, align 8
  %28 = call i64 @getnetent_p(%struct.netent* %13, %struct.netent_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %56

31:                                               ; preds = %26
  %32 = load %struct.netent*, %struct.netent** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @__copy_netent(%struct.netent* %13, %struct.netent* %32, i8* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %39 = load i32, i32* @NETDB_INTERNAL, align 4
  %40 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_4__* %38, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* @errno, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i64, i64* @errno, align 8
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i64 [ %48, %47 ], [ -1, %49 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %31
  %54 = load %struct.netent*, %struct.netent** %7, align 8
  %55 = load %struct.netent**, %struct.netent*** %10, align 8
  store %struct.netent* %54, %struct.netent** %55, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %50, %30, %18
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_4__* @__res_state(...) #1

declare dso_local %struct.netent_data* @__netent_data_init(...) #1

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @getnetent_p(%struct.netent*, %struct.netent_data*) #1

declare dso_local i64 @__copy_netent(%struct.netent*, %struct.netent*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

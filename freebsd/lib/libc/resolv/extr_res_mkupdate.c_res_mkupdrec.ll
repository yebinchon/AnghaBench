; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_mkupdrec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_res_mkupdrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, i32 }

@r_link = common dso_local global i32 0, align 4
@r_glink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @res_mkupdrec(i32 %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call i64 @calloc(i32 1, i32 40)
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strdup(i8* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = icmp ne i32 %19, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17, %5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = bitcast %struct.TYPE_4__* %27 to i8*
  %29 = call i32 @free(i8* %28)
  br label %30

30:                                               ; preds = %26, %23
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  br label %52

31:                                               ; preds = %17
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %33 = load i32, i32* @r_link, align 4
  %34 = call i32 @INIT_LINK(%struct.TYPE_4__* %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = load i32, i32* @r_glink, align 4
  %37 = call i32 @INIT_LINK(%struct.TYPE_4__* %35, i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %6, align 8
  br label %52

52:                                               ; preds = %31, %30
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  ret %struct.TYPE_4__* %53
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @INIT_LINK(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

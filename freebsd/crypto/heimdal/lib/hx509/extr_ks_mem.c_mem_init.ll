; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_mem.c_mem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_mem.c_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i32, i8*, i32)* @mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_init(i32 %0, i32 %1, i8** %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mem_data*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = call %struct.mem_data* @calloc(i32 1, i32 8)
  store %struct.mem_data* %15, %struct.mem_data** %14, align 8
  %16 = load %struct.mem_data*, %struct.mem_data** %14, align 8
  %17 = icmp eq %struct.mem_data* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %7, align 4
  br label %47

20:                                               ; preds = %6
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %20
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i8*, i8** %12, align 8
  %32 = call i32* @strdup(i8* %31)
  %33 = load %struct.mem_data*, %struct.mem_data** %14, align 8
  %34 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.mem_data*, %struct.mem_data** %14, align 8
  %36 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.mem_data*, %struct.mem_data** %14, align 8
  %41 = call i32 @free(%struct.mem_data* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.mem_data*, %struct.mem_data** %14, align 8
  %45 = bitcast %struct.mem_data* %44 to i8*
  %46 = load i8**, i8*** %10, align 8
  store i8* %45, i8** %46, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39, %18
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.mem_data* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.mem_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

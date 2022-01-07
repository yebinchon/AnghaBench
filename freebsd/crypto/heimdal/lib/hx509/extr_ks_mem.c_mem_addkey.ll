; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_mem.c_mem_addkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_mem.c_mem_addkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i32** }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @mem_addkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_addkey(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mem_data*
  store %struct.mem_data* %14, %struct.mem_data** %10, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %32, %4
  %16 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %17 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %22 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br label %29

29:                                               ; preds = %20, %15
  %30 = phi i1 [ false, %15 ], [ %28, %20 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %15

35:                                               ; preds = %29
  %36 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %37 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @realloc(i32** %38, i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @hx509_set_error_string(i32 %48, i32 0, i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %5, align 4
  br label %72

52:                                               ; preds = %35
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to i32**
  %55 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %56 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %55, i32 0, i32 0
  store i32** %54, i32*** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32* @_hx509_private_key_ref(i32 %57)
  %59 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %60 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* %58, i32** %64, align 8
  %65 = load %struct.mem_data*, %struct.mem_data** %10, align 8
  %66 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %67, i64 %70
  store i32* null, i32** %71, align 8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %52, %47
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i8* @realloc(i32**, i32) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32* @_hx509_private_key_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

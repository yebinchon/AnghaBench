; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_rtbl.c_add_column_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_rtbl.c_add_column_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.column_data = type { i32, %struct.column_entry* }
%struct.column_entry = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.column_data*, i8*)* @add_column_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_column_entry(%struct.column_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.column_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.column_entry, align 8
  %7 = alloca %struct.column_entry*, align 8
  store %struct.column_data* %0, %struct.column_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @strdup(i8* %8)
  %10 = getelementptr inbounds %struct.column_entry, %struct.column_entry* %6, i32 0, i32 0
  store i32* %9, i32** %10, align 8
  %11 = getelementptr inbounds %struct.column_entry, %struct.column_entry* %6, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.column_data*, %struct.column_data** %4, align 8
  %18 = getelementptr inbounds %struct.column_data, %struct.column_data* %17, i32 0, i32 1
  %19 = load %struct.column_entry*, %struct.column_entry** %18, align 8
  %20 = load %struct.column_data*, %struct.column_data** %4, align 8
  %21 = getelementptr inbounds %struct.column_data, %struct.column_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call %struct.column_entry* @realloc(%struct.column_entry* %19, i32 %26)
  store %struct.column_entry* %27, %struct.column_entry** %7, align 8
  %28 = load %struct.column_entry*, %struct.column_entry** %7, align 8
  %29 = icmp eq %struct.column_entry* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.column_entry, %struct.column_entry* %6, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @free(i32* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %16
  %36 = load %struct.column_entry*, %struct.column_entry** %7, align 8
  %37 = load %struct.column_data*, %struct.column_data** %4, align 8
  %38 = getelementptr inbounds %struct.column_data, %struct.column_data* %37, i32 0, i32 1
  store %struct.column_entry* %36, %struct.column_entry** %38, align 8
  %39 = load %struct.column_data*, %struct.column_data** %4, align 8
  %40 = getelementptr inbounds %struct.column_data, %struct.column_data* %39, i32 0, i32 1
  %41 = load %struct.column_entry*, %struct.column_entry** %40, align 8
  %42 = load %struct.column_data*, %struct.column_data** %4, align 8
  %43 = getelementptr inbounds %struct.column_data, %struct.column_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.column_entry, %struct.column_entry* %41, i64 %46
  %48 = bitcast %struct.column_entry* %47 to i8*
  %49 = bitcast %struct.column_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %35, %30, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @strdup(i8*) #1

declare dso_local %struct.column_entry* @realloc(%struct.column_entry*, i32) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

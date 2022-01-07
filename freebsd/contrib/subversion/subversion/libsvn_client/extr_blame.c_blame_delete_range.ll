; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_delete_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_blame.c_blame_delete_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_chain = type { i32 }
%struct.blame = type { i64, %struct.blame* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.blame_chain*, i64, i64)* @blame_delete_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blame_delete_range(%struct.blame_chain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.blame_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.blame*, align 8
  %8 = alloca %struct.blame*, align 8
  %9 = alloca %struct.blame*, align 8
  %10 = alloca %struct.blame*, align 8
  %11 = alloca %struct.blame*, align 8
  store %struct.blame_chain* %0, %struct.blame_chain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %13 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.blame* @blame_find(i32 %14, i64 %15)
  store %struct.blame* %16, %struct.blame** %7, align 8
  %17 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %18 = getelementptr inbounds %struct.blame_chain, %struct.blame_chain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %20, %21
  %23 = call %struct.blame* @blame_find(i32 %19, i64 %22)
  store %struct.blame* %23, %struct.blame** %8, align 8
  %24 = load %struct.blame*, %struct.blame** %8, align 8
  %25 = getelementptr inbounds %struct.blame, %struct.blame* %24, i32 0, i32 1
  %26 = load %struct.blame*, %struct.blame** %25, align 8
  store %struct.blame* %26, %struct.blame** %9, align 8
  %27 = load %struct.blame*, %struct.blame** %7, align 8
  %28 = load %struct.blame*, %struct.blame** %8, align 8
  %29 = icmp ne %struct.blame* %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %3
  %31 = load %struct.blame*, %struct.blame** %7, align 8
  %32 = getelementptr inbounds %struct.blame, %struct.blame* %31, i32 0, i32 1
  %33 = load %struct.blame*, %struct.blame** %32, align 8
  store %struct.blame* %33, %struct.blame** %10, align 8
  br label %34

34:                                               ; preds = %38, %30
  %35 = load %struct.blame*, %struct.blame** %10, align 8
  %36 = load %struct.blame*, %struct.blame** %8, align 8
  %37 = icmp ne %struct.blame* %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.blame*, %struct.blame** %10, align 8
  %40 = getelementptr inbounds %struct.blame, %struct.blame* %39, i32 0, i32 1
  %41 = load %struct.blame*, %struct.blame** %40, align 8
  store %struct.blame* %41, %struct.blame** %11, align 8
  %42 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %43 = load %struct.blame*, %struct.blame** %10, align 8
  %44 = call i32 @blame_destroy(%struct.blame_chain* %42, %struct.blame* %43)
  %45 = load %struct.blame*, %struct.blame** %11, align 8
  store %struct.blame* %45, %struct.blame** %10, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.blame*, %struct.blame** %8, align 8
  %48 = load %struct.blame*, %struct.blame** %7, align 8
  %49 = getelementptr inbounds %struct.blame, %struct.blame* %48, i32 0, i32 1
  store %struct.blame* %47, %struct.blame** %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.blame*, %struct.blame** %8, align 8
  %52 = getelementptr inbounds %struct.blame, %struct.blame* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.blame*, %struct.blame** %7, align 8
  %54 = getelementptr inbounds %struct.blame, %struct.blame* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.blame*, %struct.blame** %7, align 8
  %60 = load %struct.blame*, %struct.blame** %8, align 8
  %61 = bitcast %struct.blame* %59 to i8*
  %62 = bitcast %struct.blame* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %64 = load %struct.blame*, %struct.blame** %8, align 8
  %65 = call i32 @blame_destroy(%struct.blame_chain* %63, %struct.blame* %64)
  %66 = load %struct.blame*, %struct.blame** %7, align 8
  store %struct.blame* %66, %struct.blame** %8, align 8
  br label %67

67:                                               ; preds = %58, %46
  br label %68

68:                                               ; preds = %67, %3
  %69 = load %struct.blame*, %struct.blame** %9, align 8
  %70 = icmp ne %struct.blame* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load %struct.blame*, %struct.blame** %9, align 8
  %73 = getelementptr inbounds %struct.blame, %struct.blame* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.blame*, %struct.blame** %8, align 8
  %76 = getelementptr inbounds %struct.blame, %struct.blame* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add nsw i64 %77, %78
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.blame*, %struct.blame** %8, align 8
  %83 = load %struct.blame*, %struct.blame** %9, align 8
  %84 = bitcast %struct.blame* %82 to i8*
  %85 = bitcast %struct.blame* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load %struct.blame_chain*, %struct.blame_chain** %4, align 8
  %87 = load %struct.blame*, %struct.blame** %9, align 8
  %88 = call i32 @blame_destroy(%struct.blame_chain* %86, %struct.blame* %87)
  %89 = load %struct.blame*, %struct.blame** %8, align 8
  %90 = getelementptr inbounds %struct.blame, %struct.blame* %89, i32 0, i32 1
  %91 = load %struct.blame*, %struct.blame** %90, align 8
  store %struct.blame* %91, %struct.blame** %9, align 8
  br label %92

92:                                               ; preds = %81, %71, %68
  %93 = load %struct.blame*, %struct.blame** %9, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub nsw i64 0, %94
  %96 = call i32 @blame_adjust(%struct.blame* %93, i64 %95)
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local %struct.blame* @blame_find(i32, i64) #1

declare dso_local i32 @blame_destroy(%struct.blame_chain*, %struct.blame*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @blame_adjust(%struct.blame*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

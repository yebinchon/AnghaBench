; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_gctl_delete_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_gctl_delete_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32, %struct.gctl_req_arg*, i32* }
%struct.gctl_req_arg = type { i32 }

@EDOOFUS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gctl_delete_param(%struct.gctl_req* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gctl_req_arg*, align 8
  %7 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %9 = icmp eq %struct.gctl_req* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %12 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EDOOFUS, align 4
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %21 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %26 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %25, i32 0, i32 1
  %27 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %27, i64 %29
  store %struct.gctl_req_arg* %30, %struct.gctl_req_arg** %6, align 8
  %31 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %6, align 8
  %32 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i32 %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %18

41:                                               ; preds = %37, %18
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %44 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %41
  %50 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %6, align 8
  %51 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @free(i32 %52)
  %54 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %55 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, -1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %64, %49
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %61 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %66 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %65, i32 0, i32 1
  %67 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %67, i64 %69
  %71 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %72 = getelementptr inbounds %struct.gctl_req, %struct.gctl_req* %71, i32 0, i32 1
  %73 = load %struct.gctl_req_arg*, %struct.gctl_req_arg** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.gctl_req_arg, %struct.gctl_req_arg* %73, i64 %76
  %78 = bitcast %struct.gctl_req_arg* %70 to i8*
  %79 = bitcast %struct.gctl_req_arg* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %58

82:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %47, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

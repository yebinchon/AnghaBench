; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_login_timelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_ok.c_login_timelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.login_time = type { i32 }

@LTM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.login_time* @login_timelist(i32* %0, i8* %1, i32* %2, %struct.login_time** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.login_time**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.login_time*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.login_time, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.login_time** %3, %struct.login_time*** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.login_time* null, %struct.login_time** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8** @login_getcaplist(i32* %14, i8* %15, i32* null)
  store i8** %16, i8*** %11, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %86

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i8**, i8*** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %19

28:                                               ; preds = %19
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.login_time**, %struct.login_time*** %8, align 8
  %35 = load %struct.login_time*, %struct.login_time** %34, align 8
  store %struct.login_time* %35, %struct.login_time** %10, align 8
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.login_time**, %struct.login_time*** %8, align 8
  %38 = load %struct.login_time*, %struct.login_time** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call %struct.login_time* @realloc(%struct.login_time* %38, i32 %42)
  store %struct.login_time* %43, %struct.login_time** %10, align 8
  %44 = icmp ne %struct.login_time* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.login_time*, %struct.login_time** %10, align 8
  %49 = load %struct.login_time**, %struct.login_time*** %8, align 8
  store %struct.login_time* %48, %struct.login_time** %49, align 8
  br label %50

50:                                               ; preds = %45, %36
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.login_time*, %struct.login_time** %10, align 8
  %53 = icmp ne %struct.login_time* %52, null
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %75, %54
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load %struct.login_time*, %struct.login_time** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.login_time, %struct.login_time* %62, i64 %64
  %66 = load i8**, i8*** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @parse_lt(i8* %70)
  %72 = getelementptr inbounds %struct.login_time, %struct.login_time* %13, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = bitcast %struct.login_time* %65 to i8*
  %74 = bitcast %struct.login_time* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %57

78:                                               ; preds = %57
  %79 = load i32, i32* @LTM_NONE, align 4
  %80 = load %struct.login_time*, %struct.login_time** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.login_time, %struct.login_time* %80, i64 %82
  %84 = getelementptr inbounds %struct.login_time, %struct.login_time* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %51
  br label %86

86:                                               ; preds = %85, %4
  %87 = load %struct.login_time*, %struct.login_time** %10, align 8
  ret %struct.login_time* %87
}

declare dso_local i8** @login_getcaplist(i32*, i8*, i32*) #1

declare dso_local %struct.login_time* @realloc(%struct.login_time*, i32) #1

declare dso_local i32 @parse_lt(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

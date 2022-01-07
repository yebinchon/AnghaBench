; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_write_vc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_vc.c_write_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.ct_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@AF_LOCAL = common dso_local global i64 0, align 8
@errno = common dso_local global i8* null, align 8
@RPC_CANTSEND = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @write_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vc(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ct_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.ct_data*
  store %struct.ct_data* %14, %struct.ct_data** %10, align 8
  store i32 8, i32* %9, align 4
  %15 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %16 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @_getpeername(i32 %17, %struct.sockaddr* %8, i32* %9)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_LOCAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %49, %25
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %32 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 @__msgwrite(i32 %33, i8* %34, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load i8*, i8** @errno, align 8
  %41 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %42 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @RPC_CANTSEND, align 8
  %45 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %46 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  store i32 -1, i32* %4, align 4
  br label %93

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %6, align 8
  br label %27

57:                                               ; preds = %27
  br label %91

58:                                               ; preds = %20, %3
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %82, %58
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %65 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @_write(i32 %66, i8* %67, i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i8*, i8** @errno, align 8
  %74 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %75 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load i8*, i8** @RPC_CANTSEND, align 8
  %78 = load %struct.ct_data*, %struct.ct_data** %10, align 8
  %79 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  store i32 -1, i32* %4, align 4
  br label %93

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8* %89, i8** %6, align 8
  br label %60

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %72, %39
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @_getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @__msgwrite(i32, i8*, i64) #1

declare dso_local i32 @_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

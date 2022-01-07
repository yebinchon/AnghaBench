; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_krb5_kdc_process_krb5_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_krb5_kdc_process_krb5_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)*, i32 }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.sockaddr = type { i32 }

@services = common dso_local global %struct.TYPE_7__* null, align 8
@KS_KRB5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_kdc_process_krb5_request(i32 %0, i32* %1, i8* %2, i64 %3, %struct.TYPE_6__* %4, i8* %5, %struct.sockaddr* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.sockaddr* %6, %struct.sockaddr** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %19, align 4
  br label %26

26:                                               ; preds = %64, %8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @services, align 8
  %28 = load i32, i32* %19, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)*, i32 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)** %31, align 8
  %33 = icmp ne i32 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)* %32, null
  br i1 %33, label %34, label %67

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @services, align 8
  %36 = load i32, i32* %19, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @KS_KRB5, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %64

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @services, align 8
  %47 = load i32, i32* %19, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)*, i32 (i32, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i8*, %struct.sockaddr*, i32, i32*)** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 %51(i32 %52, i32* %53, %struct.TYPE_6__* %20, %struct.TYPE_6__* %54, i8* %55, %struct.sockaddr* %56, i32 %57, i32* %21)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %21, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %9, align 4
  br label %68

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i32, i32* %19, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %19, align 4
  br label %26

67:                                               ; preds = %26
  store i32 -1, i32* %9, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

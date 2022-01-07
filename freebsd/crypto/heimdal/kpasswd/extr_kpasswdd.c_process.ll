; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kpasswd/extr_kpasswdd.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"krb5_auth_con_init\00", align 1
@KRB5_AUTH_CONTEXT_DO_SEQUENCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"krb5_sockaddr2address\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"krb5_auth_con_setaddr(this)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"krb5_auth_con_setaddr(other)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, %struct.sockaddr*, i32, i32*, i32)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(i32* %0, i32 %1, i32 %2, i32* %3, %struct.sockaddr* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.sockaddr* %4, %struct.sockaddr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32* null, i32** %18, align 8
  %23 = call i32 @memset(i32* %21, i32 0, i32 4)
  %24 = call i32 @krb5_data_zero(%struct.TYPE_10__* %19)
  %25 = load i32, i32* @context, align 4
  %26 = call i64 @krb5_auth_con_init(i32 %25, i32** %18)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load i32, i32* @context, align 4
  %31 = load i64, i64* %17, align 8
  %32 = call i32 @krb5_warn(i32 %30, i64 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %105

33:                                               ; preds = %8
  %34 = load i32, i32* @context, align 4
  %35 = load i32*, i32** %18, align 8
  %36 = load i32, i32* @KRB5_AUTH_CONTEXT_DO_SEQUENCE, align 4
  %37 = call i32 @krb5_auth_con_setflags(i32 %34, i32* %35, i32 %36)
  %38 = load i32, i32* @context, align 4
  %39 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %40 = call i64 @krb5_sockaddr2address(i32 %38, %struct.sockaddr* %39, i32* %21)
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* @context, align 4
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @krb5_warn(i32 %44, i64 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %98

47:                                               ; preds = %33
  %48 = load i32, i32* @context, align 4
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @krb5_auth_con_setaddrs(i32 %48, i32* %49, i32* %50, i32* null)
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %17, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @context, align 4
  %56 = load i64, i64* %17, align 8
  %57 = call i32 @krb5_warn(i32 %55, i64 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %98

58:                                               ; preds = %47
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i64 @verify(i32** %18, i32* %59, i32 %60, %struct.TYPE_9__** %20, %struct.TYPE_10__* %19, i32* %22, i32 %61, %struct.sockaddr* %62, i32 %63, i32* %64, i32 %65, i32* %21)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %58
  %69 = load i32, i32* @context, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @krb5_auth_con_setaddrs(i32 %69, i32* %70, i32* %71, i32* %21)
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @context, align 4
  %77 = load i64, i64* %17, align 8
  %78 = call i32 @krb5_warn(i32 %76, i64 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %98

79:                                               ; preds = %68
  %80 = load i32*, i32** %18, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @change(i32* %80, i32 %83, i32 %84, i32 %85, %struct.sockaddr* %86, i32 %87, %struct.TYPE_10__* %19)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(i32* %90, i32 0, i32 %92)
  %94 = load i32, i32* @context, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %96 = call i32 @krb5_free_ticket(i32 %94, %struct.TYPE_9__* %95)
  br label %97

97:                                               ; preds = %79, %58
  br label %98

98:                                               ; preds = %97, %75, %54, %43
  %99 = load i32, i32* @context, align 4
  %100 = call i32 @krb5_free_address(i32 %99, i32* %21)
  %101 = call i32 @krb5_data_free(%struct.TYPE_10__* %19)
  %102 = load i32, i32* @context, align 4
  %103 = load i32*, i32** %18, align 8
  %104 = call i32 @krb5_auth_con_free(i32 %102, i32* %103)
  br label %105

105:                                              ; preds = %98, %29
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @krb5_data_zero(%struct.TYPE_10__*) #1

declare dso_local i64 @krb5_auth_con_init(i32, i32**) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_auth_con_setflags(i32, i32*, i32) #1

declare dso_local i64 @krb5_sockaddr2address(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @krb5_auth_con_setaddrs(i32, i32*, i32*, i32*) #1

declare dso_local i64 @verify(i32**, i32*, i32, %struct.TYPE_9__**, %struct.TYPE_10__*, i32*, i32, %struct.sockaddr*, i32, i32*, i32, i32*) #1

declare dso_local i32 @change(i32*, i32, i32, i32, %struct.sockaddr*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @krb5_free_ticket(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_10__*) #1

declare dso_local i32 @krb5_auth_con_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

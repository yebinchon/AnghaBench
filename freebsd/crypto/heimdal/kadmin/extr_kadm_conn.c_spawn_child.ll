; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_spawn_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_spawn_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"krb5_sockaddr2address\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"krb5_print_address\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"connection from %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @spawn_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spawn_child(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  %19 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %13, align 8
  store i32 4, i32* %14, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %27 = call i32 @accept(i32 %25, %struct.sockaddr* %26, i32* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @rk_IS_BAD_SOCKET(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %34 = call i32 @krb5_warn(i32 %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %102

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %38 = call i32 @krb5_sockaddr2address(i32 %36, %struct.sockaddr* %37, i32* %17)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @krb5_warn(i32 %42, i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %61

45:                                               ; preds = %35
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %47 = call i32 @krb5_print_address(i32* %17, i8* %46, i32 128, i64* %19)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @krb5_warn(i32 %51, i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %57 = call i32 @krb5_warnx(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @krb5_free_address(i32 %59, i32* %17)
  br label %61

61:                                               ; preds = %58, %41
  %62 = call i64 (...) @fork()
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rk_closesocket(i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @STDIN_FILENO, align 4
  %83 = call i32 @dup2(i32 %81, i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @STDOUT_FILENO, align 4
  %86 = call i32 @dup2(i32 %84, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @STDIN_FILENO, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @STDOUT_FILENO, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @rk_closesocket(i32 %95)
  br label %97

97:                                               ; preds = %94, %90, %80
  store i32 0, i32* %5, align 4
  br label %102

98:                                               ; preds = %61
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @rk_closesocket(i32 %99)
  br label %101

101:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %97, %31
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @rk_IS_BAD_SOCKET(i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*) #1

declare dso_local i32 @krb5_sockaddr2address(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @krb5_print_address(i32*, i8*, i32, i64*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i8*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @rk_closesocket(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

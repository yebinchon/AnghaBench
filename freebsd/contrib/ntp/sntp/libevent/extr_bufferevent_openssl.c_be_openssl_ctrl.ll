; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%union.bufferevent_ctrl_data = type { i32 }
%struct.bufferevent_openssl = type { i32, i32, i32, i32 }

@BUFFEREVENT_SSL_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_openssl_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  %8 = alloca %struct.bufferevent_openssl*, align 8
  %9 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %11 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %10)
  store %struct.bufferevent_openssl* %11, %struct.bufferevent_openssl** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %88 [
    i32 128, label %13
    i32 130, label %57
    i32 129, label %75
    i32 131, label %87
  ]

13:                                               ; preds = %3
  %14 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %15 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %89

19:                                               ; preds = %13
  %20 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %21 = bitcast %union.bufferevent_ctrl_data* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @BIO_new_socket(i32 %22, i32 0)
  store i32* %23, i32** %9, align 8
  %24 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %25 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @SSL_set_bio(i32 %26, i32* %27, i32* %28)
  %30 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %31 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %33 = bitcast %union.bufferevent_ctrl_data* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %38 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %19
  %40 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %41 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BUFFEREVENT_SSL_OPEN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %47 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %48 = bitcast %union.bufferevent_ctrl_data* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_open_callbacks(%struct.bufferevent_openssl* %46, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %89

51:                                               ; preds = %39
  %52 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %53 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %54 = bitcast %union.bufferevent_ctrl_data* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %52, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %89

57:                                               ; preds = %3
  %58 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %59 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %65 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %89

69:                                               ; preds = %63
  %70 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %71 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %70, i32 0, i32 0
  %72 = call i32 @event_get_fd(i32* %71)
  %73 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %74 = bitcast %union.bufferevent_ctrl_data* %73 to i32*
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %89

75:                                               ; preds = %3
  %76 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %77 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %89

81:                                               ; preds = %75
  %82 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %83 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %86 = bitcast %union.bufferevent_ctrl_data* %85 to i32*
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %89

87:                                               ; preds = %3
  br label %88

88:                                               ; preds = %3, %87
  store i32 -1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %81, %80, %69, %68, %62, %51, %45, %18
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32* @BIO_new_socket(i32, i32) #1

declare dso_local i32 @SSL_set_bio(i32, i32*, i32*) #1

declare dso_local i32 @set_open_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @set_handshake_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @event_get_fd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

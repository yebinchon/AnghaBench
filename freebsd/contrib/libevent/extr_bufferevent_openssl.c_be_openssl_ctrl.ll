; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%union.bufferevent_ctrl_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bufferevent_openssl = type { %struct.TYPE_2__*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_openssl_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  %8 = alloca %struct.bufferevent_openssl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %12 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %11)
  store %struct.bufferevent_openssl* %12, %struct.bufferevent_openssl** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %80 [
    i32 128, label %14
    i32 130, label %53
    i32 129, label %73
    i32 131, label %79
  ]

14:                                               ; preds = %3
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %21 = bitcast %union.bufferevent_ctrl_data* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = call i32* @BIO_new_socket(i8* %22, i32 0)
  store i32* %23, i32** %9, align 8
  %24 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %25 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @SSL_set_bio(i32 %26, i32* %27, i32* %28)
  br label %44

30:                                               ; preds = %14
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %32 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32* @BIO_new_bufferevent(%struct.TYPE_2__* %33, i32 0)
  store i32* %34, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %81

37:                                               ; preds = %30
  %38 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %39 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @SSL_set_bio(i32 %40, i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %37, %19
  %45 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %46 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %47 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %50 = bitcast %union.bufferevent_ctrl_data* %49 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @be_openssl_set_fd(%struct.bufferevent_openssl* %45, i32 %48, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %81

53:                                               ; preds = %3
  %54 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %55 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %60 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i8* @event_get_fd(i32* %62)
  %64 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %65 = bitcast %union.bufferevent_ctrl_data* %64 to i8**
  store i8* %63, i8** %65, align 8
  br label %72

66:                                               ; preds = %53
  %67 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %68 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %67, i32 0, i32 0
  %69 = call i8* @event_get_fd(i32* %68)
  %70 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %71 = bitcast %union.bufferevent_ctrl_data* %70 to i8**
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %58
  store i32 0, i32* %4, align 4
  br label %81

73:                                               ; preds = %3
  %74 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %75 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %78 = bitcast %union.bufferevent_ctrl_data* %77 to %struct.TYPE_2__**
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %78, align 8
  store i32 0, i32* %4, align 4
  br label %81

79:                                               ; preds = %3
  br label %80

80:                                               ; preds = %3, %79
  store i32 -1, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %73, %72, %44, %36
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32* @BIO_new_socket(i8*, i32) #1

declare dso_local i32 @SSL_set_bio(i32, i32*, i32*) #1

declare dso_local i32* @BIO_new_bufferevent(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @be_openssl_set_fd(%struct.bufferevent_openssl*, i32, i8*) #1

declare dso_local i8* @event_get_fd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_handle_curved_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_handle_curved_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32 }
%struct.comm_reply = type { i32, i32, i32, i32*, %struct.comm_point* }
%struct.comm_point = type { i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"handle request called on DNSCrypt socket\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dnscrypt: Failed to uncurve\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnsc_handle_curved_request(%struct.dnsc_env* %0, %struct.comm_reply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnsc_env*, align 8
  %5 = alloca %struct.comm_reply*, align 8
  %6 = alloca %struct.comm_point*, align 8
  store %struct.dnsc_env* %0, %struct.dnsc_env** %4, align 8
  store %struct.comm_reply* %1, %struct.comm_reply** %5, align 8
  %7 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %8 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %7, i32 0, i32 4
  %9 = load %struct.comm_point*, %struct.comm_point** %8, align 8
  store %struct.comm_point* %9, %struct.comm_point** %6, align 8
  %10 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %11 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %13 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load i32, i32* @VERB_ALGO, align 4
  %19 = call i32 @verbose(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.dnsc_env*, %struct.dnsc_env** %4, align 8
  %21 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %22 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @dnsc_find_cert(%struct.dnsc_env* %20, i32 %23)
  %25 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %26 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = icmp ne i32* %24, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %17
  %29 = load %struct.dnsc_env*, %struct.dnsc_env** %4, align 8
  %30 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %31 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %34 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %37 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %40 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @dnscrypt_server_uncurve(%struct.dnsc_env* %29, i32* %32, i32 %35, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load i32, i32* @VERB_ALGO, align 4
  %46 = call i32 @verbose(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %48 = call i32 @comm_point_drop_reply(%struct.comm_reply* %47)
  store i32 0, i32* %3, align 4
  br label %57

49:                                               ; preds = %28
  %50 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %51 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %53 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sldns_buffer_rewind(i32 %54)
  br label %56

56:                                               ; preds = %49, %17
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %44, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32* @dnsc_find_cert(%struct.dnsc_env*, i32) #1

declare dso_local i64 @dnscrypt_server_uncurve(%struct.dnsc_env*, i32*, i32, i32, i32) #1

declare dso_local i32 @comm_point_drop_reply(%struct.comm_reply*) #1

declare dso_local i32 @sldns_buffer_rewind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

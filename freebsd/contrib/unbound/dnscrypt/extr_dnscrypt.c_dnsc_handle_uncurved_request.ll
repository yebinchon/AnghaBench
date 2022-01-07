; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_handle_uncurved_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_handle_uncurved_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_reply = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@comm_udp = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"dnscrypt: Failed to curve cached missed answer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnsc_handle_uncurved_request(%struct.comm_reply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comm_reply*, align 8
  store %struct.comm_reply* %0, %struct.comm_reply** %3, align 8
  %4 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %5 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %13 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %18 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sldns_buffer_copy(i32 %16, i32 %21)
  %23 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %24 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %62

28:                                               ; preds = %11
  %29 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %30 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %33 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %36 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %39 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %44 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @comm_udp, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %52 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dnscrypt_server_curve(i32 %31, i32 %34, i32 %37, i32 %42, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %28
  %57 = load i32, i32* @VERB_ALGO, align 4
  %58 = call i32 @verbose(i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.comm_reply*, %struct.comm_reply** %3, align 8
  %60 = call i32 @comm_point_drop_reply(%struct.comm_reply* %59)
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56, %27, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @sldns_buffer_copy(i32, i32) #1

declare dso_local i64 @dnscrypt_server_curve(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @comm_point_drop_reply(%struct.comm_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

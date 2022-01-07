; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_method_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_methods.c_eap_server_method_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_method = type { i64, i64, i64, %struct.eap_method*, i32* }

@EAP_SERVER_METHOD_INTERFACE_VERSION = common dso_local global i64 0, align 8
@eap_methods = common dso_local global %struct.eap_method* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_server_method_register(%struct.eap_method* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_method*, align 8
  %4 = alloca %struct.eap_method*, align 8
  %5 = alloca %struct.eap_method*, align 8
  store %struct.eap_method* %0, %struct.eap_method** %3, align 8
  store %struct.eap_method* null, %struct.eap_method** %5, align 8
  %6 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %7 = icmp eq %struct.eap_method* %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %10 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %15 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EAP_SERVER_METHOD_INTERFACE_VERSION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %8, %1
  %20 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %21 = call i32 @eap_server_method_free(%struct.eap_method* %20)
  store i32 -1, i32* %2, align 4
  br label %71

22:                                               ; preds = %13
  %23 = load %struct.eap_method*, %struct.eap_method** @eap_methods, align 8
  store %struct.eap_method* %23, %struct.eap_method** %4, align 8
  br label %24

24:                                               ; preds = %57, %22
  %25 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %26 = icmp ne %struct.eap_method* %25, null
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %29 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %32 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %37 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %40 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %35, %27
  %44 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %45 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %48 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @os_strcmp(i32* %46, i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43, %35
  %53 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %54 = call i32 @eap_server_method_free(%struct.eap_method* %53)
  store i32 -2, i32* %2, align 4
  br label %71

55:                                               ; preds = %43
  %56 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  store %struct.eap_method* %56, %struct.eap_method** %5, align 8
  br label %57

57:                                               ; preds = %55
  %58 = load %struct.eap_method*, %struct.eap_method** %4, align 8
  %59 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %58, i32 0, i32 3
  %60 = load %struct.eap_method*, %struct.eap_method** %59, align 8
  store %struct.eap_method* %60, %struct.eap_method** %4, align 8
  br label %24

61:                                               ; preds = %24
  %62 = load %struct.eap_method*, %struct.eap_method** %5, align 8
  %63 = icmp ne %struct.eap_method* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  %66 = load %struct.eap_method*, %struct.eap_method** %5, align 8
  %67 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %66, i32 0, i32 3
  store %struct.eap_method* %65, %struct.eap_method** %67, align 8
  br label %70

68:                                               ; preds = %61
  %69 = load %struct.eap_method*, %struct.eap_method** %3, align 8
  store %struct.eap_method* %69, %struct.eap_method** @eap_methods, align 8
  br label %70

70:                                               ; preds = %68, %64
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %52, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @eap_server_method_free(%struct.eap_method*) #1

declare dso_local i64 @os_strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

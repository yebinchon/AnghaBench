; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_global = type { %struct.wpa_priv_interface* }
%struct.wpa_priv_interface = type { %struct.wpa_priv_interface* }

@.str = private unnamed_addr constant [18 x i8] c"/var/run/wpa_priv\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Bc:dP:\00", align 1
@optarg = common dso_local global i8* null, align 8
@wpa_debug_level = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"wpa_priv control directory: '%s'\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to initialize event loop\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Adding driver:interface %s\00", align 1
@wpa_priv_terminate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wpa_priv_global, align 8
  %13 = alloca %struct.wpa_priv_interface*, align 8
  %14 = alloca %struct.wpa_priv_interface*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %15 = call i64 (...) @os_program_init()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %135

18:                                               ; preds = %2
  %19 = call i32 (...) @wpa_priv_fd_workaround()
  %20 = call i32 @os_memset(%struct.wpa_priv_global* %12, i32 0, i32 8)
  %21 = getelementptr inbounds %struct.wpa_priv_global, %struct.wpa_priv_global* %12, i32 0, i32 0
  store %struct.wpa_priv_interface* null, %struct.wpa_priv_interface** %21, align 8
  br label %22

22:                                               ; preds = %44, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %42 [
    i32 66, label %31
    i32 99, label %34
    i32 100, label %36
    i32 80, label %39
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %44

34:                                               ; preds = %29
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %11, align 8
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* @wpa_debug_level, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @wpa_debug_level, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i8* @os_rel2abs_path(i8* %40)
  store i8* %41, i8** %9, align 8
  br label %44

42:                                               ; preds = %29
  %43 = call i32 (...) @usage()
  br label %124

44:                                               ; preds = %39, %36, %34, %31
  br label %22

45:                                               ; preds = %28
  %46 = load i32, i32* @optind, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @usage()
  br label %124

51:                                               ; preds = %45
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i64 (...) @eloop_init()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @MSG_ERROR, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %124

60:                                               ; preds = %51
  %61 = load i32, i32* @optind, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %91, %60
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = load i8*, i8** %11, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call %struct.wpa_priv_interface* @wpa_priv_interface_init(%struct.wpa_priv_global* %12, i8* %74, i8* %79)
  store %struct.wpa_priv_interface* %80, %struct.wpa_priv_interface** %13, align 8
  %81 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %13, align 8
  %82 = icmp eq %struct.wpa_priv_interface* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %109

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.wpa_priv_global, %struct.wpa_priv_global* %12, i32 0, i32 0
  %86 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %85, align 8
  %87 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %13, align 8
  %88 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %87, i32 0, i32 0
  store %struct.wpa_priv_interface* %86, %struct.wpa_priv_interface** %88, align 8
  %89 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %13, align 8
  %90 = getelementptr inbounds %struct.wpa_priv_global, %struct.wpa_priv_global* %12, i32 0, i32 0
  store %struct.wpa_priv_interface* %89, %struct.wpa_priv_interface** %90, align 8
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %62

94:                                               ; preds = %62
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = call i64 @os_daemonize(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = call i64 (...) @eloop_sock_requeue()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %109

105:                                              ; preds = %101, %97, %94
  %106 = load i32, i32* @wpa_priv_terminate, align 4
  %107 = call i32 @eloop_register_signal_terminate(i32 %106, i32* null)
  %108 = call i32 (...) @eloop_run()
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %104, %83
  %110 = getelementptr inbounds %struct.wpa_priv_global, %struct.wpa_priv_global* %12, i32 0, i32 0
  %111 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %110, align 8
  store %struct.wpa_priv_interface* %111, %struct.wpa_priv_interface** %13, align 8
  br label %112

112:                                              ; preds = %115, %109
  %113 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %13, align 8
  %114 = icmp ne %struct.wpa_priv_interface* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %13, align 8
  store %struct.wpa_priv_interface* %116, %struct.wpa_priv_interface** %14, align 8
  %117 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %13, align 8
  %118 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %117, i32 0, i32 0
  %119 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %118, align 8
  store %struct.wpa_priv_interface* %119, %struct.wpa_priv_interface** %13, align 8
  %120 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %14, align 8
  %121 = call i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface* %120)
  br label %112

122:                                              ; preds = %112
  %123 = call i32 (...) @eloop_destroy()
  br label %124

124:                                              ; preds = %122, %57, %49, %42
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @os_daemonize_terminate(i8* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @os_free(i8* %131)
  %133 = call i32 (...) @os_program_deinit()
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %130, %17
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @os_program_init(...) #1

declare dso_local i32 @wpa_priv_fd_workaround(...) #1

declare dso_local i32 @os_memset(%struct.wpa_priv_global*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @os_rel2abs_path(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eloop_init(...) #1

declare dso_local %struct.wpa_priv_interface* @wpa_priv_interface_init(%struct.wpa_priv_global*, i8*, i8*) #1

declare dso_local i64 @os_daemonize(i8*) #1

declare dso_local i64 @eloop_sock_requeue(...) #1

declare dso_local i32 @eloop_register_signal_terminate(i32, i32*) #1

declare dso_local i32 @eloop_run(...) #1

declare dso_local i32 @wpa_priv_interface_deinit(%struct.wpa_priv_interface*) #1

declare dso_local i32 @eloop_destroy(...) #1

declare dso_local i32 @os_daemonize_terminate(i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_program_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

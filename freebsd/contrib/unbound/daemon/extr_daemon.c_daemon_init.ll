; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_daemon.c_daemon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon = type { %struct.daemon*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.module_env = type { %struct.module_env*, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"gettimeofday: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_CIPHERS = common dso_local global i32 0, align 4
@OPENSSL_INIT_ADD_ALL_DIGESTS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_CRYPTO_STRINGS = common dso_local global i32 0, align 4
@OPENSSL_INIT_LOAD_SSL_STRINGS = common dso_local global i32 0, align 4
@SECSuccess = common dso_local global i64 0, align 8
@comp_meth = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.daemon* @daemon_init() #0 {
  %1 = alloca %struct.daemon*, align 8
  %2 = alloca %struct.daemon*, align 8
  %3 = call i64 @calloc(i32 1, i32 48)
  %4 = inttoptr i64 %3 to %struct.daemon*
  store %struct.daemon* %4, %struct.daemon** %2, align 8
  %5 = load %struct.daemon*, %struct.daemon** %2, align 8
  %6 = icmp ne %struct.daemon* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.daemon* null, %struct.daemon** %1, align 8
  br label %145

8:                                                ; preds = %0
  %9 = call i32 (...) @signal_handling_record()
  %10 = call i32 (...) @checklock_start()
  %11 = call i64 @time(i32* null)
  %12 = trunc i64 %11 to i32
  %13 = call i64 (...) @getpid()
  %14 = trunc i64 %13 to i32
  %15 = xor i32 %12, %14
  %16 = xor i32 %15, 3687
  %17 = call i32 @ub_systemseed(i32 %16)
  %18 = load %struct.daemon*, %struct.daemon** %2, align 8
  %19 = getelementptr inbounds %struct.daemon, %struct.daemon* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.daemon*, %struct.daemon** %2, align 8
  %21 = getelementptr inbounds %struct.daemon, %struct.daemon* %20, i32 0, i32 7
  %22 = call i32 @modstack_init(i32* %21)
  %23 = call i64 @calloc(i32 1, i32 48)
  %24 = inttoptr i64 %23 to %struct.module_env*
  %25 = bitcast %struct.module_env* %24 to %struct.daemon*
  %26 = load %struct.daemon*, %struct.daemon** %2, align 8
  %27 = getelementptr inbounds %struct.daemon, %struct.daemon* %26, i32 0, i32 0
  store %struct.daemon* %25, %struct.daemon** %27, align 8
  %28 = icmp ne %struct.daemon* %25, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %8
  %30 = load %struct.daemon*, %struct.daemon** %2, align 8
  %31 = bitcast %struct.daemon* %30 to %struct.module_env*
  %32 = call i32 @free(%struct.module_env* %31)
  store %struct.daemon* null, %struct.daemon** %1, align 8
  br label %145

33:                                               ; preds = %8
  %34 = load %struct.daemon*, %struct.daemon** %2, align 8
  %35 = getelementptr inbounds %struct.daemon, %struct.daemon* %34, i32 0, i32 0
  %36 = load %struct.daemon*, %struct.daemon** %35, align 8
  %37 = bitcast %struct.daemon* %36 to %struct.module_env*
  %38 = call i32 @edns_known_options_init(%struct.module_env* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %33
  %41 = load %struct.daemon*, %struct.daemon** %2, align 8
  %42 = getelementptr inbounds %struct.daemon, %struct.daemon* %41, i32 0, i32 0
  %43 = load %struct.daemon*, %struct.daemon** %42, align 8
  %44 = bitcast %struct.daemon* %43 to %struct.module_env*
  %45 = call i32 @free(%struct.module_env* %44)
  %46 = load %struct.daemon*, %struct.daemon** %2, align 8
  %47 = bitcast %struct.daemon* %46 to %struct.module_env*
  %48 = call i32 @free(%struct.module_env* %47)
  store %struct.daemon* null, %struct.daemon** %1, align 8
  br label %145

49:                                               ; preds = %33
  %50 = load %struct.daemon*, %struct.daemon** %2, align 8
  %51 = getelementptr inbounds %struct.daemon, %struct.daemon* %50, i32 0, i32 6
  %52 = call i32 @alloc_init(i32* %51, i32* null, i32 0)
  %53 = call i32 (...) @acl_list_create()
  %54 = load %struct.daemon*, %struct.daemon** %2, align 8
  %55 = getelementptr inbounds %struct.daemon, %struct.daemon* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.daemon*, %struct.daemon** %2, align 8
  %57 = getelementptr inbounds %struct.daemon, %struct.daemon* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %49
  %61 = load %struct.daemon*, %struct.daemon** %2, align 8
  %62 = getelementptr inbounds %struct.daemon, %struct.daemon* %61, i32 0, i32 0
  %63 = load %struct.daemon*, %struct.daemon** %62, align 8
  %64 = bitcast %struct.daemon* %63 to %struct.module_env*
  %65 = call i32 @edns_known_options_delete(%struct.module_env* %64)
  %66 = load %struct.daemon*, %struct.daemon** %2, align 8
  %67 = getelementptr inbounds %struct.daemon, %struct.daemon* %66, i32 0, i32 0
  %68 = load %struct.daemon*, %struct.daemon** %67, align 8
  %69 = bitcast %struct.daemon* %68 to %struct.module_env*
  %70 = call i32 @free(%struct.module_env* %69)
  %71 = load %struct.daemon*, %struct.daemon** %2, align 8
  %72 = bitcast %struct.daemon* %71 to %struct.module_env*
  %73 = call i32 @free(%struct.module_env* %72)
  store %struct.daemon* null, %struct.daemon** %1, align 8
  br label %145

74:                                               ; preds = %49
  %75 = call i32 (...) @tcl_list_create()
  %76 = load %struct.daemon*, %struct.daemon** %2, align 8
  %77 = getelementptr inbounds %struct.daemon, %struct.daemon* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.daemon*, %struct.daemon** %2, align 8
  %79 = getelementptr inbounds %struct.daemon, %struct.daemon* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %74
  %83 = load %struct.daemon*, %struct.daemon** %2, align 8
  %84 = getelementptr inbounds %struct.daemon, %struct.daemon* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @acl_list_delete(i32 %85)
  %87 = load %struct.daemon*, %struct.daemon** %2, align 8
  %88 = getelementptr inbounds %struct.daemon, %struct.daemon* %87, i32 0, i32 0
  %89 = load %struct.daemon*, %struct.daemon** %88, align 8
  %90 = bitcast %struct.daemon* %89 to %struct.module_env*
  %91 = call i32 @edns_known_options_delete(%struct.module_env* %90)
  %92 = load %struct.daemon*, %struct.daemon** %2, align 8
  %93 = getelementptr inbounds %struct.daemon, %struct.daemon* %92, i32 0, i32 0
  %94 = load %struct.daemon*, %struct.daemon** %93, align 8
  %95 = bitcast %struct.daemon* %94 to %struct.module_env*
  %96 = call i32 @free(%struct.module_env* %95)
  %97 = load %struct.daemon*, %struct.daemon** %2, align 8
  %98 = bitcast %struct.daemon* %97 to %struct.module_env*
  %99 = call i32 @free(%struct.module_env* %98)
  store %struct.daemon* null, %struct.daemon** %1, align 8
  br label %145

100:                                              ; preds = %74
  %101 = load %struct.daemon*, %struct.daemon** %2, align 8
  %102 = getelementptr inbounds %struct.daemon, %struct.daemon* %101, i32 0, i32 4
  %103 = call i64 @gettimeofday(i32* %102, i32* null)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 @strerror(i32 %106)
  %108 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.daemon*, %struct.daemon** %2, align 8
  %111 = getelementptr inbounds %struct.daemon, %struct.daemon* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.daemon*, %struct.daemon** %2, align 8
  %114 = getelementptr inbounds %struct.daemon, %struct.daemon* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = call i32 (...) @auth_zones_create()
  %116 = load %struct.daemon*, %struct.daemon** %2, align 8
  %117 = getelementptr inbounds %struct.daemon, %struct.daemon* %116, i32 0, i32 0
  %118 = load %struct.daemon*, %struct.daemon** %117, align 8
  %119 = getelementptr inbounds %struct.daemon, %struct.daemon* %118, i32 0, i32 3
  store i32 %115, i32* %119, align 8
  %120 = icmp eq i32 %115, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %109
  %122 = load %struct.daemon*, %struct.daemon** %2, align 8
  %123 = getelementptr inbounds %struct.daemon, %struct.daemon* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @acl_list_delete(i32 %124)
  %126 = load %struct.daemon*, %struct.daemon** %2, align 8
  %127 = getelementptr inbounds %struct.daemon, %struct.daemon* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @tcl_list_delete(i32 %128)
  %130 = load %struct.daemon*, %struct.daemon** %2, align 8
  %131 = getelementptr inbounds %struct.daemon, %struct.daemon* %130, i32 0, i32 0
  %132 = load %struct.daemon*, %struct.daemon** %131, align 8
  %133 = bitcast %struct.daemon* %132 to %struct.module_env*
  %134 = call i32 @edns_known_options_delete(%struct.module_env* %133)
  %135 = load %struct.daemon*, %struct.daemon** %2, align 8
  %136 = getelementptr inbounds %struct.daemon, %struct.daemon* %135, i32 0, i32 0
  %137 = load %struct.daemon*, %struct.daemon** %136, align 8
  %138 = bitcast %struct.daemon* %137 to %struct.module_env*
  %139 = call i32 @free(%struct.module_env* %138)
  %140 = load %struct.daemon*, %struct.daemon** %2, align 8
  %141 = bitcast %struct.daemon* %140 to %struct.module_env*
  %142 = call i32 @free(%struct.module_env* %141)
  store %struct.daemon* null, %struct.daemon** %1, align 8
  br label %145

143:                                              ; preds = %109
  %144 = load %struct.daemon*, %struct.daemon** %2, align 8
  store %struct.daemon* %144, %struct.daemon** %1, align 8
  br label %145

145:                                              ; preds = %143, %121, %82, %60, %40, %29, %7
  %146 = load %struct.daemon*, %struct.daemon** %1, align 8
  ret %struct.daemon* %146
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @signal_handling_record(...) #1

declare dso_local i32 @checklock_start(...) #1

declare dso_local i32 @ub_systemseed(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @modstack_init(i32*) #1

declare dso_local i32 @free(%struct.module_env*) #1

declare dso_local i32 @edns_known_options_init(%struct.module_env*) #1

declare dso_local i32 @alloc_init(i32*, i32*, i32) #1

declare dso_local i32 @acl_list_create(...) #1

declare dso_local i32 @edns_known_options_delete(%struct.module_env*) #1

declare dso_local i32 @tcl_list_create(...) #1

declare dso_local i32 @acl_list_delete(i32) #1

declare dso_local i64 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @auth_zones_create(...) #1

declare dso_local i32 @tcl_list_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

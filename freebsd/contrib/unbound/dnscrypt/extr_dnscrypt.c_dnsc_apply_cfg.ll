; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32, i8*, i8*, i32, i32, i32 }
%struct.config_file = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"dnsc_apply_cfg: no cert file loaded\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dnsc_apply_cfg: no key file loaded\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"dnsc_apply_cfg: could not load local data\00", align 1
@HASH_DEFAULT_STARTARRAY = common dso_local global i32 0, align 4
@dnsc_shared_secrets_sizefunc = common dso_local global i32 0, align 4
@dnsc_shared_secrets_compfunc = common dso_local global i32 0, align 4
@dnsc_shared_secrets_delkeyfunc = common dso_local global i32 0, align 4
@dnsc_shared_secrets_deldatafunc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"dnsc_apply_cfg: could not create shared secrets cache.\00", align 1
@dnsc_nonces_sizefunc = common dso_local global i32 0, align 4
@dnsc_nonces_compfunc = common dso_local global i32 0, align 4
@dnsc_nonces_delkeyfunc = common dso_local global i32 0, align 4
@dnsc_nonces_deldatafunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnsc_apply_cfg(%struct.dnsc_env* %0, %struct.config_file* %1) #0 {
  %3 = alloca %struct.dnsc_env*, align 8
  %4 = alloca %struct.config_file*, align 8
  store %struct.dnsc_env* %0, %struct.dnsc_env** %3, align 8
  store %struct.config_file* %1, %struct.config_file** %4, align 8
  %5 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %6 = load %struct.config_file*, %struct.config_file** %4, align 8
  %7 = call i64 @dnsc_parse_certs(%struct.dnsc_env* %5, %struct.config_file* %6)
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @fatal_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %13 = load %struct.config_file*, %struct.config_file** %4, align 8
  %14 = call i64 @dnsc_parse_keys(%struct.dnsc_env* %12, %struct.config_file* %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @fatal_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %20 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @randombytes_buf(i32 %21, i32 4)
  %23 = load %struct.config_file*, %struct.config_file** %4, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %27 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %29 = load %struct.config_file*, %struct.config_file** %4, align 8
  %30 = call i64 @dnsc_load_local_data(%struct.dnsc_env* %28, %struct.config_file* %29)
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = call i32 @fatal_exit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %18
  %35 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %36 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %35, i32 0, i32 3
  %37 = call i32 @lock_basic_lock(i32* %36)
  %38 = load %struct.config_file*, %struct.config_file** %4, align 8
  %39 = getelementptr inbounds %struct.config_file, %struct.config_file* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HASH_DEFAULT_STARTARRAY, align 4
  %42 = load %struct.config_file*, %struct.config_file** %4, align 8
  %43 = getelementptr inbounds %struct.config_file, %struct.config_file* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @dnsc_shared_secrets_sizefunc, align 4
  %46 = load i32, i32* @dnsc_shared_secrets_compfunc, align 4
  %47 = load i32, i32* @dnsc_shared_secrets_delkeyfunc, align 4
  %48 = load i32, i32* @dnsc_shared_secrets_deldatafunc, align 4
  %49 = call i8* @slabhash_create(i32 %40, i32 %41, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32* null)
  %50 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %51 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %53 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %52, i32 0, i32 3
  %54 = call i32 @lock_basic_unlock(i32* %53)
  %55 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %56 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %34
  %60 = call i32 @fatal_exit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %34
  %62 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %63 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %62, i32 0, i32 0
  %64 = call i32 @lock_basic_lock(i32* %63)
  %65 = load %struct.config_file*, %struct.config_file** %4, align 8
  %66 = getelementptr inbounds %struct.config_file, %struct.config_file* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HASH_DEFAULT_STARTARRAY, align 4
  %69 = load %struct.config_file*, %struct.config_file** %4, align 8
  %70 = getelementptr inbounds %struct.config_file, %struct.config_file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @dnsc_nonces_sizefunc, align 4
  %73 = load i32, i32* @dnsc_nonces_compfunc, align 4
  %74 = load i32, i32* @dnsc_nonces_delkeyfunc, align 4
  %75 = load i32, i32* @dnsc_nonces_deldatafunc, align 4
  %76 = call i8* @slabhash_create(i32 %67, i32 %68, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32* null)
  %77 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %78 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.dnsc_env*, %struct.dnsc_env** %3, align 8
  %80 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %79, i32 0, i32 0
  %81 = call i32 @lock_basic_unlock(i32* %80)
  ret i32 0
}

declare dso_local i64 @dnsc_parse_certs(%struct.dnsc_env*, %struct.config_file*) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i64 @dnsc_parse_keys(%struct.dnsc_env*, %struct.config_file*) #1

declare dso_local i32 @randombytes_buf(i32, i32) #1

declare dso_local i64 @dnsc_load_local_data(%struct.dnsc_env*, %struct.config_file*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i8* @slabhash_create(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

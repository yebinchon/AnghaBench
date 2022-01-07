; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/test/bsm/extr_generate.c_generate_process64ex_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/test/bsm/extr_generate.c_generate_process64ex_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@AU_IPv6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fe80::1\00", align 1
@process64_tid_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-IPv6\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@AU_IPv4 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"-IPv4\00", align 1
@process64_auid = common dso_local global i32 0, align 4
@process64_euid = common dso_local global i32 0, align 4
@process64_egid = common dso_local global i32 0, align 4
@process64_ruid = common dso_local global i32 0, align 4
@process64_rgid = common dso_local global i32 0, align 4
@process64_pid = common dso_local global i32 0, align 4
@process64_sid = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"au_to_process64_ex\00", align 1
@AUE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @generate_process64ex_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_process64ex_record(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 6
  %12 = call i64 @malloc(i64 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @AU_IPv6, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* @AF_INET6, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @process64_tid_addr, i32 0, i32 1), align 8
  %20 = call i32 @inet_pton(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %19)
  %21 = load i64, i64* @AU_IPv6, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @process64_tid_addr, i32 0, i32 0), align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %33

25:                                               ; preds = %3
  %26 = call i32 @inet_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @process64_tid_addr, i32 0, i32 1), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* @AU_IPv4, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @process64_tid_addr, i32 0, i32 0), align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* @process64_auid, align 4
  %35 = load i32, i32* @process64_euid, align 4
  %36 = load i32, i32* @process64_egid, align 4
  %37 = load i32, i32* @process64_ruid, align 4
  %38 = load i32, i32* @process64_rgid, align 4
  %39 = load i32, i32* @process64_pid, align 4
  %40 = load i32, i32* @process64_sid, align 4
  %41 = call i32* @au_to_process64_ex(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, %struct.TYPE_3__* @process64_tid_addr)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @EX_UNAVAILABLE, align 4
  %46 = call i32 @err(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @AUE_NULL, align 4
  %52 = call i32 @write_record(i8* %48, i8* %49, i32* %50, i32 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32* @au_to_process64_ex(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @write_record(i8*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_log.c_slg_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_log.c_slg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [10 x i8], i32 }

@slg_write.mapping = internal constant [20 x %struct.anon] [%struct.anon { i32 6, [10 x i8] c"PANIC \00\00\00\00", i32 132 }, %struct.anon { i32 6, [10 x i8] c"EMERG \00\00\00\00", i32 132 }, %struct.anon { i32 4, [10 x i8] c"EMR \00\00\00\00\00\00", i32 132 }, %struct.anon { i32 6, [10 x i8] c"ALERT \00\00\00\00", i32 135 }, %struct.anon { i32 4, [10 x i8] c"ALR \00\00\00\00\00\00", i32 135 }, %struct.anon { i32 5, [10 x i8] c"CRIT \00\00\00\00\00", i32 134 }, %struct.anon { i32 4, [10 x i8] c"CRI \00\00\00\00\00\00", i32 134 }, %struct.anon { i32 6, [10 x i8] c"ERROR \00\00\00\00", i32 131 }, %struct.anon { i32 4, [10 x i8] c"ERR \00\00\00\00\00\00", i32 131 }, %struct.anon { i32 8, [10 x i8] c"WARNING \00\00", i32 128 }, %struct.anon { i32 5, [10 x i8] c"WARN \00\00\00\00\00", i32 128 }, %struct.anon { i32 4, [10 x i8] c"WAR \00\00\00\00\00\00", i32 128 }, %struct.anon { i32 7, [10 x i8] c"NOTICE \00\00\00", i32 129 }, %struct.anon { i32 5, [10 x i8] c"NOTE \00\00\00\00\00", i32 129 }, %struct.anon { i32 4, [10 x i8] c"NOT \00\00\00\00\00\00", i32 129 }, %struct.anon { i32 5, [10 x i8] c"INFO \00\00\00\00\00", i32 130 }, %struct.anon { i32 4, [10 x i8] c"INF \00\00\00\00\00\00", i32 130 }, %struct.anon { i32 6, [10 x i8] c"DEBUG \00\00\00\00", i32 133 }, %struct.anon { i32 4, [10 x i8] c"DBG \00\00\00\00\00\00", i32 133 }, %struct.anon { i32 0, [10 x i8] zeroinitializer, i32 131 }], align 16
@BIO_F_SLG_WRITE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @slg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slg_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i8* @OPENSSL_malloc(i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @BIO_F_SLG_WRITE, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @BIOerr(i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memcpy(i8* %23, i8* %24, i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %45, %22
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 1
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %36, i64 0, i64 0
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strncmp(i8* %32, i8* %37, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [20 x %struct.anon], [20 x %struct.anon]* @slg_write.mapping, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %54, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @xsyslog(i32* %62, i32 %63, i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @OPENSSL_free(i8* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %48, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @xsyslog(i32*, i32, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

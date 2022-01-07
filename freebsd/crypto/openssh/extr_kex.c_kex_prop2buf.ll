; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_prop2buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_prop2buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@PROPOSAL_MAX = common dso_local global i64 0, align 8
@KEX_COOKIE_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_prop2buf(%struct.sshbuf* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i64, i64* @PROPOSAL_MAX, align 8
  %9 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %10 = call i32 @sshbuf_reset(%struct.sshbuf* %9)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @KEX_COOKIE_LEN, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %17 = call i32 @sshbuf_put_u8(%struct.sshbuf* %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %11

25:                                               ; preds = %11
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @PROPOSAL_MAX, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %31, i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %46 = call i32 @sshbuf_put_u8(%struct.sshbuf* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %50 = call i32 @sshbuf_put_u32(%struct.sshbuf* %49, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %38, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

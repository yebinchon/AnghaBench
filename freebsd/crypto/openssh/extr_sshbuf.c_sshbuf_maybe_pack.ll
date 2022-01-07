; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_maybe_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf.c_sshbuf_maybe_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"force %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pre-pack\00", align 1
@SSHBUF_PACK_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"packed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sshbuf*, i32)* @sshbuf_maybe_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sshbuf_maybe_pack(%struct.sshbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @SSHBUF_DBG(i8* %7)
  %9 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %11 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %16 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %21 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %2
  br label %73

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %30 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SSHBUF_PACK_MIN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  %35 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %36 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %39 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 2
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %34, %25
  %44 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %45 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %48 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %51 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %56 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %59 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = call i32 @memmove(i64 %46, i64 %54, i32 %61)
  %63 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %64 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %67 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %71 = getelementptr inbounds %struct.sshbuf, %struct.sshbuf* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = call i32 @SSHBUF_TELL(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %24, %43, %34, %28
  ret void
}

declare dso_local i32 @SSHBUF_DBG(i8*) #1

declare dso_local i32 @SSHBUF_TELL(i8*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

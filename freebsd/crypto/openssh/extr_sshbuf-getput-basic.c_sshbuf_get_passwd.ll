; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_get_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sshbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @sshbuf_get_passwd(%struct.sshbuf* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %8 = call i32 @sshbuf_get_u64(%struct.sshbuf* %7, i32* %5)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 44
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %64

16:                                               ; preds = %11
  %17 = call %struct.passwd* @xcalloc(i32 1, i32 44)
  store %struct.passwd* %17, %struct.passwd** %4, align 8
  %18 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %19 = load %struct.passwd*, %struct.passwd** %4, align 8
  %20 = getelementptr inbounds %struct.passwd, %struct.passwd* %19, i32 0, i32 10
  %21 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %18, i32* %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %16
  %24 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %25 = load %struct.passwd*, %struct.passwd** %4, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 9
  %27 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %24, i32* %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %23
  %30 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %31 = load %struct.passwd*, %struct.passwd** %4, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 8
  %33 = call i64 @sshbuf_get_u32(%struct.sshbuf* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %29
  %36 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %37 = load %struct.passwd*, %struct.passwd** %4, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 7
  %39 = call i64 @sshbuf_get_u32(%struct.sshbuf* %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %43 = load %struct.passwd*, %struct.passwd** %4, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 3
  %45 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %42, i32* %44, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %49 = load %struct.passwd*, %struct.passwd** %4, align 8
  %50 = getelementptr inbounds %struct.passwd, %struct.passwd* %49, i32 0, i32 2
  %51 = call i64 @sshbuf_get_cstring(%struct.sshbuf* %48, i32* %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %55 = load %struct.passwd*, %struct.passwd** %4, align 8
  %56 = getelementptr inbounds %struct.passwd, %struct.passwd* %55, i32 0, i32 0
  %57 = call i64 @sshbuf_get_u32(%struct.sshbuf* %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %47, %41, %35, %29, %23, %16
  %60 = load %struct.passwd*, %struct.passwd** %4, align 8
  %61 = call i32 @sshbuf_free_passwd(%struct.passwd* %60)
  store %struct.passwd* null, %struct.passwd** %2, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load %struct.passwd*, %struct.passwd** %4, align 8
  store %struct.passwd* %63, %struct.passwd** %2, align 8
  br label %64

64:                                               ; preds = %62, %59, %15
  %65 = load %struct.passwd*, %struct.passwd** %2, align 8
  ret %struct.passwd* %65
}

declare dso_local i32 @sshbuf_get_u64(%struct.sshbuf*, i32*) #1

declare dso_local %struct.passwd* @xcalloc(i32, i32) #1

declare dso_local i64 @sshbuf_get_cstring(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i64 @sshbuf_get_u32(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_free_passwd(%struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

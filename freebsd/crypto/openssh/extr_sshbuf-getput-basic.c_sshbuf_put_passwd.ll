; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_put_passwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshbuf-getput-basic.c_sshbuf_put_passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.passwd = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshbuf_put_passwd(%struct.sshbuf* %0, %struct.passwd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %8 = call i64 @sshbuf_put_u64(%struct.sshbuf* %7, i32 64)
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %6, align 4
  br i1 %9, label %57, label %11

11:                                               ; preds = %2
  %12 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %13 = load %struct.passwd*, %struct.passwd** %5, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %12, i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %11
  %19 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %20 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %18
  %23 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %24 = load %struct.passwd*, %struct.passwd** %5, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @sshbuf_put_u32(%struct.sshbuf* %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %22
  %30 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %31 = load %struct.passwd*, %struct.passwd** %5, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sshbuf_put_u32(%struct.sshbuf* %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %29
  %37 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %38 = load %struct.passwd*, %struct.passwd** %5, align 8
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %37, i8* %40)
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %45 = load %struct.passwd*, %struct.passwd** %5, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %44, i8* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %52 = load %struct.passwd*, %struct.passwd** %5, align 8
  %53 = getelementptr inbounds %struct.passwd, %struct.passwd* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sshbuf_put_u32(%struct.sshbuf* %51, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %43, %36, %29, %22, %18, %11, %2
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @sshbuf_put_u64(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i8*) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

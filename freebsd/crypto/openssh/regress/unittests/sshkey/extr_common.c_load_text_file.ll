; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_common.c_load_text_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/sshkey/extr_common.c_load_text_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sshbuf* @load_text_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.sshbuf* @load_file(i8* %5)
  store %struct.sshbuf* %6, %struct.sshbuf** %3, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %8 = call i8* @sshbuf_ptr(%struct.sshbuf* %7)
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %58, %1
  %10 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %11 = call i32 @sshbuf_len(%struct.sshbuf* %10)
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %16 = call i32 @sshbuf_len(%struct.sshbuf* %15)
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %53, label %23

23:                                               ; preds = %13
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %26 = call i32 @sshbuf_len(%struct.sshbuf* %25)
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %53, label %33

33:                                               ; preds = %23
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %36 = call i32 @sshbuf_len(%struct.sshbuf* %35)
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %46 = call i32 @sshbuf_len(%struct.sshbuf* %45)
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %57

53:                                               ; preds = %43, %33, %23, %13
  %54 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %55 = call i32 @sshbuf_consume_end(%struct.sshbuf* %54, i32 1)
  %56 = call i32 @ASSERT_INT_EQ(i32 %55, i32 0)
  br label %58

57:                                               ; preds = %43
  br label %59

58:                                               ; preds = %53
  br label %9

59:                                               ; preds = %57, %9
  %60 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %61 = call i32 @sshbuf_put_u8(%struct.sshbuf* %60, i32 0)
  %62 = call i32 @ASSERT_INT_EQ(i32 %61, i32 0)
  %63 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  ret %struct.sshbuf* %63
}

declare dso_local %struct.sshbuf* @load_file(i8*) #1

declare dso_local i8* @sshbuf_ptr(%struct.sshbuf*) #1

declare dso_local i32 @sshbuf_len(%struct.sshbuf*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

declare dso_local i32 @sshbuf_consume_end(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

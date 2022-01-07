; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_kex_to_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_kex_to_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.kex = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.kex*)* @kex_to_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kex_to_blob(%struct.sshbuf* %0, %struct.kex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshbuf*, align 8
  %5 = alloca %struct.kex*, align 8
  %6 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %4, align 8
  store %struct.kex* %1, %struct.kex** %5, align 8
  %7 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %8 = load %struct.kex*, %struct.kex** %5, align 8
  %9 = getelementptr inbounds %struct.kex, %struct.kex* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.kex*, %struct.kex** %5, align 8
  %12 = getelementptr inbounds %struct.kex, %struct.kex* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sshbuf_put_string(%struct.sshbuf* %7, i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %86, label %16

16:                                               ; preds = %2
  %17 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %18 = load %struct.kex*, %struct.kex** %5, align 8
  %19 = getelementptr inbounds %struct.kex, %struct.kex* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sshbuf_put_u32(%struct.sshbuf* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %86, label %23

23:                                               ; preds = %16
  %24 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %25 = load %struct.kex*, %struct.kex** %5, align 8
  %26 = getelementptr inbounds %struct.kex, %struct.kex* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %23
  %31 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %32 = load %struct.kex*, %struct.kex** %5, align 8
  %33 = getelementptr inbounds %struct.kex, %struct.kex* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sshbuf_put_u32(%struct.sshbuf* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %30
  %38 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %39 = load %struct.kex*, %struct.kex** %5, align 8
  %40 = getelementptr inbounds %struct.kex, %struct.kex* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sshbuf_put_u32(%struct.sshbuf* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %86, label %44

44:                                               ; preds = %37
  %45 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %46 = load %struct.kex*, %struct.kex** %5, align 8
  %47 = getelementptr inbounds %struct.kex, %struct.kex* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sshbuf_put_u32(%struct.sshbuf* %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %86, label %51

51:                                               ; preds = %44
  %52 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %53 = load %struct.kex*, %struct.kex** %5, align 8
  %54 = getelementptr inbounds %struct.kex, %struct.kex* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %51
  %59 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %60 = load %struct.kex*, %struct.kex** %5, align 8
  %61 = getelementptr inbounds %struct.kex, %struct.kex* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %58
  %66 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %67 = load %struct.kex*, %struct.kex** %5, align 8
  %68 = getelementptr inbounds %struct.kex, %struct.kex* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sshbuf_put_u32(%struct.sshbuf* %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %74 = load %struct.kex*, %struct.kex** %5, align 8
  %75 = getelementptr inbounds %struct.kex, %struct.kex* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %73, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.sshbuf*, %struct.sshbuf** %4, align 8
  %81 = load %struct.kex*, %struct.kex** %5, align 8
  %82 = getelementptr inbounds %struct.kex, %struct.kex* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sshbuf_put_cstring(%struct.sshbuf* %80, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %72, %65, %58, %51, %44, %37, %30, %23, %16, %2
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %86
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @sshbuf_put_string(%struct.sshbuf*, i32, i32) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_cstring(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

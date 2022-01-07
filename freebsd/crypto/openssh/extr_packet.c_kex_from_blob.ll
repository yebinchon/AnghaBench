; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_kex_from_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_kex_from_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }
%struct.kex = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, %struct.kex**)* @kex_from_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kex_from_blob(%struct.sshbuf* %0, %struct.kex** %1) #0 {
  %3 = alloca %struct.sshbuf*, align 8
  %4 = alloca %struct.kex**, align 8
  %5 = alloca %struct.kex*, align 8
  %6 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %3, align 8
  store %struct.kex** %1, %struct.kex*** %4, align 8
  %7 = call %struct.kex* @calloc(i32 1, i32 64)
  store %struct.kex* %7, %struct.kex** %5, align 8
  %8 = icmp eq %struct.kex* %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = call i8* (...) @sshbuf_new()
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.kex*, %struct.kex** %5, align 8
  %13 = getelementptr inbounds %struct.kex, %struct.kex* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = icmp eq i32* %11, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = call i8* (...) @sshbuf_new()
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.kex*, %struct.kex** %5, align 8
  %19 = getelementptr inbounds %struct.kex, %struct.kex* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = icmp eq i32* %17, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %9, %2
  %22 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %22, i32* %6, align 4
  br label %99

23:                                               ; preds = %15
  %24 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %25 = load %struct.kex*, %struct.kex** %5, align 8
  %26 = getelementptr inbounds %struct.kex, %struct.kex* %25, i32 0, i32 13
  %27 = load %struct.kex*, %struct.kex** %5, align 8
  %28 = getelementptr inbounds %struct.kex, %struct.kex* %27, i32 0, i32 12
  %29 = call i32 @sshbuf_get_string(%struct.sshbuf* %24, i32* %26, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %93, label %31

31:                                               ; preds = %23
  %32 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %33 = load %struct.kex*, %struct.kex** %5, align 8
  %34 = getelementptr inbounds %struct.kex, %struct.kex* %33, i32 0, i32 11
  %35 = call i32 @sshbuf_get_u32(%struct.sshbuf* %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %93, label %37

37:                                               ; preds = %31
  %38 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %39 = load %struct.kex*, %struct.kex** %5, align 8
  %40 = getelementptr inbounds %struct.kex, %struct.kex* %39, i32 0, i32 10
  %41 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %38, i32* %40, i32* null)
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %93, label %43

43:                                               ; preds = %37
  %44 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %45 = load %struct.kex*, %struct.kex** %5, align 8
  %46 = getelementptr inbounds %struct.kex, %struct.kex* %45, i32 0, i32 9
  %47 = call i32 @sshbuf_get_u32(%struct.sshbuf* %44, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %93, label %49

49:                                               ; preds = %43
  %50 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %51 = load %struct.kex*, %struct.kex** %5, align 8
  %52 = getelementptr inbounds %struct.kex, %struct.kex* %51, i32 0, i32 8
  %53 = call i32 @sshbuf_get_u32(%struct.sshbuf* %50, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %49
  %56 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %57 = load %struct.kex*, %struct.kex** %5, align 8
  %58 = getelementptr inbounds %struct.kex, %struct.kex* %57, i32 0, i32 7
  %59 = call i32 @sshbuf_get_u32(%struct.sshbuf* %56, i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %55
  %62 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %63 = load %struct.kex*, %struct.kex** %5, align 8
  %64 = getelementptr inbounds %struct.kex, %struct.kex* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @sshbuf_get_stringb(%struct.sshbuf* %62, i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %93, label %68

68:                                               ; preds = %61
  %69 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %70 = load %struct.kex*, %struct.kex** %5, align 8
  %71 = getelementptr inbounds %struct.kex, %struct.kex* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @sshbuf_get_stringb(%struct.sshbuf* %69, i32* %72)
  store i32 %73, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %68
  %76 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %77 = load %struct.kex*, %struct.kex** %5, align 8
  %78 = getelementptr inbounds %struct.kex, %struct.kex* %77, i32 0, i32 6
  %79 = call i32 @sshbuf_get_u32(%struct.sshbuf* %76, i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %83 = load %struct.kex*, %struct.kex** %5, align 8
  %84 = getelementptr inbounds %struct.kex, %struct.kex* %83, i32 0, i32 5
  %85 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %82, i32* %84, i32* null)
  store i32 %85, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.sshbuf*, %struct.sshbuf** %3, align 8
  %89 = load %struct.kex*, %struct.kex** %5, align 8
  %90 = getelementptr inbounds %struct.kex, %struct.kex* %89, i32 0, i32 4
  %91 = call i32 @sshbuf_get_cstring(%struct.sshbuf* %88, i32* %90, i32* null)
  store i32 %91, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %81, %75, %68, %61, %55, %49, %43, %37, %31, %23
  br label %99

94:                                               ; preds = %87
  %95 = load %struct.kex*, %struct.kex** %5, align 8
  %96 = getelementptr inbounds %struct.kex, %struct.kex* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.kex*, %struct.kex** %5, align 8
  %98 = getelementptr inbounds %struct.kex, %struct.kex* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %93, %21
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load %struct.kex**, %struct.kex*** %4, align 8
  %104 = icmp eq %struct.kex** %103, null
  br i1 %104, label %105, label %125

105:                                              ; preds = %102, %99
  %106 = load %struct.kex*, %struct.kex** %5, align 8
  %107 = icmp ne %struct.kex* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.kex*, %struct.kex** %5, align 8
  %110 = getelementptr inbounds %struct.kex, %struct.kex* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @sshbuf_free(i32* %111)
  %113 = load %struct.kex*, %struct.kex** %5, align 8
  %114 = getelementptr inbounds %struct.kex, %struct.kex* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @sshbuf_free(i32* %115)
  %117 = load %struct.kex*, %struct.kex** %5, align 8
  %118 = call i32 @free(%struct.kex* %117)
  br label %119

119:                                              ; preds = %108, %105
  %120 = load %struct.kex**, %struct.kex*** %4, align 8
  %121 = icmp ne %struct.kex** %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load %struct.kex**, %struct.kex*** %4, align 8
  store %struct.kex* null, %struct.kex** %123, align 8
  br label %124

124:                                              ; preds = %122, %119
  br label %128

125:                                              ; preds = %102
  %126 = load %struct.kex*, %struct.kex** %5, align 8
  %127 = load %struct.kex**, %struct.kex*** %4, align 8
  store %struct.kex* %126, %struct.kex** %127, align 8
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local %struct.kex* @calloc(i32, i32) #1

declare dso_local i8* @sshbuf_new(...) #1

declare dso_local i32 @sshbuf_get_string(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_get_u32(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_get_cstring(%struct.sshbuf*, i32*, i32*) #1

declare dso_local i32 @sshbuf_get_stringb(%struct.sshbuf*, i32*) #1

declare dso_local i32 @sshbuf_free(i32*) #1

declare dso_local i32 @free(%struct.kex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

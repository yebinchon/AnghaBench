; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/bin/df/extr_getmntinfo.c_setup_pr23600.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/bin/df/extr_getmntinfo.c_setup_pr23600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statvfs = type { i8*, i8*, i64, i64, i64, i64, i32, i32 }

@setup_pr23600.tmpl = internal constant %struct.statvfs { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i64 0, i64 15251512, i64 15251512, i64 20971376, i32 512, i32 512 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"/dev/wd0e\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"/mount/windows/C\00", align 1
@AVAIL = common dso_local global i64 0, align 8
@BSIZE = common dso_local global i32 0, align 4
@TOTAL = common dso_local global i64 0, align 8
@USED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_pr23600 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pr23600() #0 {
  %1 = call %struct.statvfs* (...) @getnewstatvfs()
  %2 = bitcast %struct.statvfs* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.statvfs* @setup_pr23600.tmpl to i8*), i64 56, i1 false)
  ret void
}

declare dso_local %struct.statvfs* @getnewstatvfs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

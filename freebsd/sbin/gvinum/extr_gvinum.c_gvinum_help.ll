; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2082 x i8] c"COMMANDS\0Acheckparity [-f] plex\0A        Check the parity blocks of a RAID-5 plex.\0Acreate [-f] description-file\0A        Create as per description-file or open editor.\0Aattach plex volume [rename]\0Aattach subdisk plex [offset] [rename]\0A        Attach a plex to a volume, or a subdisk to a plex\0Aconcat [-fv] [-n name] drives\0A        Create a concatenated volume from the specified drives.\0Adetach [-f] [plex | subdisk]\0A        Detach a plex or a subdisk from the volume or plex to\0A        which it is attached.\0Agrow plex drive\0A        Grow plex by creating a properly sized subdisk on drive\0Al | list [-r] [-v] [-V] [volume | plex | subdisk]\0A        List information about specified objects.\0Ald [-r] [-v] [-V] [volume]\0A        List information about drives.\0Als [-r] [-v] [-V] [subdisk]\0A        List information about subdisks.\0Alp [-r] [-v] [-V] [plex]\0A        List information about plexes.\0Alv [-r] [-v] [-V] [volume]\0A        List information about volumes.\0Amirror [-fsv] [-n name] drives\0A        Create a mirrored volume from the specified drives.\0Amove | mv -f drive object ...\0A        Move the object(s) to the specified drive.\0Aquit    Exit the vinum program when running in interactive mode.  Nor-\0A        mally this would be done by entering the EOF character.\0Araid5 [-fv] [-s stripesize] [-n name] drives\0A        Create a RAID-5 volume from the specified drives.\0Arename [-r] [drive | subdisk | plex | volume] newname\0A        Change the name of the specified object.\0Arebuildparity plex [-f]\0A        Rebuild the parity blocks of a RAID-5 plex.\0Aresetconfig [-f]\0A        Reset the complete gvinum configuration\0Arm [-r] [-f] volume | plex | subdisk | drive\0A        Remove an object.\0Asaveconfig\0A        Save vinum configuration to disk after configuration failures.\0Asetstate [-f] state [volume | plex | subdisk | drive]\0A        Set state without influencing other objects, for diagnostic pur-\0A        poses only.\0Astart [-S size] volume | plex | subdisk\0A        Allow the system to access the objects.\0Astripe [-fv] [-n name] drives\0A        Create a striped volume from the specified drives.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gvinum_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2082 x i8], [2082 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
